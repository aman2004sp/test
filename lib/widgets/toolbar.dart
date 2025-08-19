
import 'package:flutter/material.dart';

class MindMapToolbar extends StatelessWidget {
  final void Function()? onAddNode, onDeleteNode, onConnectNodes, onViewMode, onOrientation, onZoomIn, onZoomOut;
  const MindMapToolbar({Key? key, this.onAddNode, this.onDeleteNode, this.onConnectNodes, this.onViewMode, this.onOrientation, this.onZoomIn, this.onZoomOut}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(icon: Icon(Icons.add), onPressed: onAddNode),
        IconButton(icon: Icon(Icons.delete), onPressed: onDeleteNode),
        IconButton(icon: Icon(Icons.link), onPressed: onConnectNodes),
        IconButton(icon: Icon(Icons.visibility), onPressed: onViewMode),
        IconButton(icon: Icon(Icons.screen_rotation), onPressed: onOrientation),
        IconButton(icon: Icon(Icons.zoom_in), onPressed: onZoomIn),
        IconButton(icon: Icon(Icons.zoom_out), onPressed: onZoomOut),
      ],
    );
  }
}
