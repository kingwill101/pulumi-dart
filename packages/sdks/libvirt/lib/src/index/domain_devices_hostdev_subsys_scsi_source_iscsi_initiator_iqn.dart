// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesHostdevSubsysScsiSourceIscsiInitiatorIqn {
  /// Sets the name for the iSCSI initiator's IQN.
  final pulumi.Input<String> name;

  /// Creates a new [DomainDevicesHostdevSubsysScsiSourceIscsiInitiatorIqn].
  /// [name] Sets the name for the iSCSI initiator's IQN.
  const DomainDevicesHostdevSubsysScsiSourceIscsiInitiatorIqn({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory DomainDevicesHostdevSubsysScsiSourceIscsiInitiatorIqn.fromMap(Map<String, dynamic> map) {
    return DomainDevicesHostdevSubsysScsiSourceIscsiInitiatorIqn(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

