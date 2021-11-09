import 'package:flutter/material.dart';

class buildCropMonitor extends StatefulWidget {
  // const buildCropMonitor({Key? key}) : super(key: key);
  final title;

  const buildCropMonitor(this.title);
  @override
  _buildCropMonitorState createState() => _buildCropMonitorState();
}

class _buildCropMonitorState extends State<buildCropMonitor> {
  var _title;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _title = widget.title; // id
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('$_title'),
        centerTitle: true,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: double.infinity,
        child: Column(
          
        ),
      ),
    );
  }
}
