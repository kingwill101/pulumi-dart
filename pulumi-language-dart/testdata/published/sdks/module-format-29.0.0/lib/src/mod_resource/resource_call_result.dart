// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by Resource.call.
class ResourceCallResult {
  final double output;

  /// Creates a new [ResourceCallResult].
  /// [output] Required.
  const ResourceCallResult({
    required this.output,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'output': output,
    };
  }

  factory ResourceCallResult.fromMap(Map<String, dynamic> map) {
    return ResourceCallResult(
      output: (map['output'] as num).toDouble(),
    );
  }
}
