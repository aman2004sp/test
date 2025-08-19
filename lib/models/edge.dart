
class Edge {
  final String id;
  final String fromNodeId;
  final String toNodeId;
  Color color;
  String? label;
  Edge({required this.id, required this.fromNodeId, required this.toNodeId, required this.color, this.label});
}
