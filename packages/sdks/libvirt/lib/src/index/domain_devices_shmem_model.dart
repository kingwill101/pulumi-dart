// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesShmemModel {
  /// Sets the type attribute for the model of the shared memory device.
  final pulumi.Input<String> type;

  /// Creates a new [DomainDevicesShmemModel].
  /// [type] Sets the type attribute for the model of the shared memory device.
  DomainDevicesShmemModel({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory DomainDevicesShmemModel.fromMap(Map<String, dynamic> map) {
    return DomainDevicesShmemModel(
      type: (map['type'] as String).input(),
    );
  }
}

