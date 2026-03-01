// ignore_for_file: unused_element, unnecessary_cast


/// Representation of a network edge location as per https://cloud.google.com/vpc/docs/edge-locations.
class EdgeLocationResponse {
  /// Name of the metropolitan area.
  final String metropolitanArea;

  /// Creates a new [EdgeLocationResponse].
  /// [metropolitanArea] Name of the metropolitan area.
  EdgeLocationResponse({
    required this.metropolitanArea,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metropolitanArea': metropolitanArea,
    };
  }

  factory EdgeLocationResponse.fromMap(Map<String, dynamic> map) {
    return EdgeLocationResponse(
      metropolitanArea: map['metropolitanArea'] as String,
    );
  }
}

