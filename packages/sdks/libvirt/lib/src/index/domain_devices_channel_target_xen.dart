// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesChannelTargetXen {
  /// This field sets the name for the Xen channel target.
  final pulumi.Input<String?>? name;
  /// This field configures the state of the Xen channel target.
  final pulumi.Input<String?>? state;

  /// Creates a new [DomainDevicesChannelTargetXen].
  /// [name] This field sets the name for the Xen channel target.
  /// [state] This field configures the state of the Xen channel target.
  const DomainDevicesChannelTargetXen({
    this.name,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'state': ?state,
    };
  }

  factory DomainDevicesChannelTargetXen.fromMap(Map<String, dynamic> map) {
    return DomainDevicesChannelTargetXen(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
