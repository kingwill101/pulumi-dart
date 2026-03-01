// ignore_for_file: unused_element, unnecessary_cast


/// Properties pertaining to the ClfsTarget
class ClfsTargetResponse {
  /// Resource ID of storage container.
  final String? target;

  /// Creates a new [ClfsTargetResponse].
  /// [target] Resource ID of storage container.
  ClfsTargetResponse({
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'target': ?target,
    };
  }

  factory ClfsTargetResponse.fromMap(Map<String, dynamic> map) {
    return ClfsTargetResponse(
      target: map['target'] == null ? null : map['target'] as String,
    );
  }
}

