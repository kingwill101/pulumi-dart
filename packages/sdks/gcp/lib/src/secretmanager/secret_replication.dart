// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_replication_auto.dart';
import 'secret_replication_user_managed.dart';

class SecretReplication {
  /// The Secret will automatically be replicated without any restrictions.
  /// Structure is documented below.
  final pulumi.Input<SecretReplicationAuto>? auto;
  /// The Secret will be replicated to the regions specified by the user.
  /// Structure is documented below.
  final pulumi.Input<SecretReplicationUserManaged>? userManaged;

  /// Creates a new [SecretReplication].
  /// [auto] The Secret will automatically be replicated without any restrictions.
  /// [userManaged] The Secret will be replicated to the regions specified by the user.
  SecretReplication({
    this.auto,
    this.userManaged,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auto': ?pulumi.Input.mapOptionalInputValue<SecretReplicationAuto, Map<String, dynamic>>(auto, (value) => value.toMap()),
      'userManaged': ?pulumi.Input.mapOptionalInputValue<SecretReplicationUserManaged, Map<String, dynamic>>(userManaged, (value) => value.toMap()),
    };
  }

  factory SecretReplication.fromMap(Map<String, dynamic> map) {
    return SecretReplication(
      auto: (() { final guardedValue = map['auto']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecretReplicationAuto.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      userManaged: (() { final guardedValue = map['userManaged']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecretReplicationUserManaged.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

