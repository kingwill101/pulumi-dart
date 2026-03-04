// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccountAvailabilitiesAvailability {
  /// A set of services which are available for the given region.
  final pulumi.Input<List<String>> availables;

  /// The region this availability entry refers to.
  final pulumi.Input<String> region;

  /// A set of services that are unavailable for the given region.
  final pulumi.Input<List<String>> unavailables;

  /// Creates a new [GetAccountAvailabilitiesAvailability].
  /// [availables] A set of services which are available for the given region.
  /// [region] The region this availability entry refers to.
  /// [unavailables] A set of services that are unavailable for the given region.
  GetAccountAvailabilitiesAvailability({
    required this.availables,
    required this.region,
    required this.unavailables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availables': availables,
      'region': region,
      'unavailables': unavailables,
    };
  }

  factory GetAccountAvailabilitiesAvailability.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetAccountAvailabilitiesAvailability(
      availables: pulumi.Input.fromValue(
        (map['availables'] as List).cast<String>(),
      ),
      region: pulumi.Input.fromValue(map['region'] as String),
      unavailables: pulumi.Input.fromValue(
        (map['unavailables'] as List).cast<String>(),
      ),
    );
  }
}
