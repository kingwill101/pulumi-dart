// ignore_for_file: unused_element, unnecessary_cast


/// String/text values.
class GoogleCloudContentwarehouseV1TextArray {
  /// List of text values.
  final List<String>? values;

  /// Creates a new [GoogleCloudContentwarehouseV1TextArray].
  /// [values] List of text values.
  GoogleCloudContentwarehouseV1TextArray({
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': ?values,
    };
  }

  factory GoogleCloudContentwarehouseV1TextArray.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1TextArray(
      values: map['values'] == null ? null : (map['values'] as List).cast<String>(),
    );
  }
}

