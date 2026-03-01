// ignore_for_file: unused_element, unnecessary_cast


class GetAccountGeoLocation {
  final int failoverPriority;
  /// The ID of the virtual network subnet.
  final String id;
  /// The name of the Azure region hosting replicated data.
  final String location;

  /// Creates a new [GetAccountGeoLocation].
  /// [failoverPriority] Required.
  /// [id] The ID of the virtual network subnet.
  /// [location] The name of the Azure region hosting replicated data.
  GetAccountGeoLocation({
    required this.failoverPriority,
    required this.id,
    required this.location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failoverPriority': failoverPriority,
      'id': id,
      'location': location,
    };
  }

  factory GetAccountGeoLocation.fromMap(Map<String, dynamic> map) {
    return GetAccountGeoLocation(
      failoverPriority: map['failoverPriority'] as int,
      id: map['id'] as String,
      location: map['location'] as String,
    );
  }
}

