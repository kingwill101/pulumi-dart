// ignore_for_file: unused_element, unnecessary_cast


/// Representation of a network edge location as per https://cloud.google.com/vpc/docs/edge-locations.
class EdgeLocationResponseNetworkmanagementV1beta1 {
  /// Name of the metropolitan area.
  final String metropolitanArea;

  /// Creates a new [EdgeLocationResponseNetworkmanagementV1beta1].
  /// [metropolitanArea] Name of the metropolitan area.
  EdgeLocationResponseNetworkmanagementV1beta1({
    required this.metropolitanArea,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metropolitanArea': metropolitanArea,
    };
  }

  factory EdgeLocationResponseNetworkmanagementV1beta1.fromMap(Map<String, dynamic> map) {
    return EdgeLocationResponseNetworkmanagementV1beta1(
      metropolitanArea: map['metropolitanArea'] as String,
    );
  }
}

