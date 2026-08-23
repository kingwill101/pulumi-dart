// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDedicatedInferenceSizesSizeSizeCategory {
  /// The fleet name associated with the size category.
  final pulumi.Input<String> fleetName;
  /// The display name of the size category.
  final pulumi.Input<String> name;

  /// Creates a new [GetDedicatedInferenceSizesSizeSizeCategory].
  /// [fleetName] The fleet name associated with the size category.
  /// [name] The display name of the size category.
  const GetDedicatedInferenceSizesSizeSizeCategory({
    required this.fleetName,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fleetName': fleetName,
      'name': name,
    };
  }

  factory GetDedicatedInferenceSizesSizeSizeCategory.fromMap(Map<String, dynamic> map) {
    return GetDedicatedInferenceSizesSizeSizeCategory(
      fleetName: pulumi.Input.fromValue(map['fleetName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
