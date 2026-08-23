// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesInterfaceModel {
  /// Sets the specific type of the network interface model.
  final pulumi.Input<String> type;

  /// Creates a new [DomainDevicesInterfaceModel].
  /// [type] Sets the specific type of the network interface model.
  const DomainDevicesInterfaceModel({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory DomainDevicesInterfaceModel.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceModel(
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
