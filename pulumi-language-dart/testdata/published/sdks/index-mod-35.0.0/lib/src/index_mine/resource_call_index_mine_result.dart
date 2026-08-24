// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by Resource.call.
class ResourceCallIndexMineResult {
  final double output;

  /// Creates a new [ResourceCallIndexMineResult].
  /// [output] Required.
  const ResourceCallIndexMineResult({
    required this.output,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'output': output,
    };
  }

  factory ResourceCallIndexMineResult.fromMap(Map<String, dynamic> map) {
    return ResourceCallIndexMineResult(
      output: (map['output'] as num).toDouble(),
    );
  }
}
