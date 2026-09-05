// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccountGeoLocation {
  final pulumi.Input<int> failoverPriority;
  /// The ID of the virtual network subnet.
  final pulumi.Input<String> id;
  /// The name of the Azure region hosting replicated data.
  final pulumi.Input<String> location;

  /// Creates a new [GetAccountGeoLocation].
  /// [failoverPriority] Required.
  /// [id] The ID of the virtual network subnet.
  /// [location] The name of the Azure region hosting replicated data.
  const GetAccountGeoLocation({
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
      failoverPriority: pulumi.Input.fromValue((map['failoverPriority'] as num).toInt()),
      id: pulumi.Input.fromValue(map['id'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
    );
  }
}
