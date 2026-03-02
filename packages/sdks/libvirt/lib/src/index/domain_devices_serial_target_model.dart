// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesSerialTargetModel {
  /// Specifies the name attribute for the model of the target serial device.
  final pulumi.Input<String>? name;

  /// Creates a new [DomainDevicesSerialTargetModel].
  /// [name] Specifies the name attribute for the model of the target serial device.
  DomainDevicesSerialTargetModel({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory DomainDevicesSerialTargetModel.fromMap(Map<String, dynamic> map) {
    return DomainDevicesSerialTargetModel(
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

