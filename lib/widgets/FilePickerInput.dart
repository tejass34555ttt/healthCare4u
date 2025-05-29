import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class FilePickerInput extends StatefulWidget {
  final String label;
  final void Function(PlatformFile file) onFileSelected;

  const FilePickerInput({
    super.key,
     required this.label,
    required this.onFileSelected,
  });

  @override
  _FilePickerInputState createState() => _FilePickerInputState();
}

class _FilePickerInputState extends State<FilePickerInput> {
  PlatformFile? _selectedFile;

  Future<void> _pickFile() async {
    final result = await FilePicker.platform.pickFiles();

    if (result != null && result.files.isNotEmpty) {
      setState(() {
        _selectedFile = result.files.first;
      });
      widget.onFileSelected(_selectedFile!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.label, style: TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        InkWell(
          onTap: _pickFile,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                const Icon(Icons.attach_file, color: Colors.grey),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    _selectedFile?.name ?? "Choose a file... ",
                    style: TextStyle(
                      color: _selectedFile == null ? Colors.grey : Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
