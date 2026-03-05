// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'per_instance_config_preserved_state_internal_ip_ip_address.dart';

class PerInstanceConfigPreservedStateInternalIp {
  /// These stateful IPs will never be released during autohealing, update or VM instance recreate operations. This flag is used to configure if the IP reservation should be deleted after it is no longer used by the group, e.g. when the given instance or the whole group is deleted.
  /// Default value is `NEVER`.
  /// Possible values are: `NEVER`, `ON_PERMANENT_INSTANCE_DELETION`.
  final pulumi.Input<String>? autoDelete;
  /// The identifier for this object. Format specified above.
  final pulumi.Input<String> interfaceName;
  /// Ip address representation
  /// Structure is documented below.
  final pulumi.Input<PerInstanceConfigPreservedStateInternalIpIpAddress>? ipAddress;

  /// Creates a new [PerInstanceConfigPreservedStateInternalIp].
  /// [autoDelete] These stateful IPs will never be released during autohealing, update or VM instance recreate operations. This flag is used to configure if the IP reservation should be deleted after it is no longer used by the group, e.g. when the given instance or the whole group is deleted.
  /// [interfaceName] The identifier for this object. Format specified above.
  /// [ipAddress] Ip address representation
  PerInstanceConfigPreservedStateInternalIp({
    this.autoDelete,
    required this.interfaceName,
    this.ipAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoDelete': ?autoDelete,
      'interfaceName': interfaceName,
      'ipAddress': ?pulumi.Input.mapOptionalInputValue<PerInstanceConfigPreservedStateInternalIpIpAddress, Map<String, dynamic>>(ipAddress, (value) => value.toMap()),
    };
  }

  factory PerInstanceConfigPreservedStateInternalIp.fromMap(Map<String, dynamic> map) {
    return PerInstanceConfigPreservedStateInternalIp(
      autoDelete: (() { final guardedValue = map['autoDelete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      interfaceName: pulumi.Input.fromValue(map['interfaceName'] as String),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PerInstanceConfigPreservedStateInternalIpIpAddress.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

