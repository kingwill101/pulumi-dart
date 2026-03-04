// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_managed_secretmanager_v1beta1.dart';

/// A policy that defines the replication configuration of data.
class ReplicationSecretmanagerV1beta1 {
  /// The Secret will automatically be replicated without any restrictions.
  final pulumi.Input<Map<String, dynamic>>? automatic;

  /// The Secret will only be replicated into the locations specified.
  final pulumi.Input<UserManagedSecretmanagerV1beta1>? userManaged;

  /// Creates a new [ReplicationSecretmanagerV1beta1].
  /// [automatic] The Secret will automatically be replicated without any restrictions.
  /// [userManaged] The Secret will only be replicated into the locations specified.
  ReplicationSecretmanagerV1beta1({this.automatic, this.userManaged});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automatic': ?automatic,
      'userManaged':
          ?pulumi.Input.mapOptionalInputValue<
            UserManagedSecretmanagerV1beta1,
            Map<String, dynamic>
          >(userManaged, (value) => value.toMap()),
    };
  }

  factory ReplicationSecretmanagerV1beta1.fromMap(Map<String, dynamic> map) {
    return ReplicationSecretmanagerV1beta1(
      automatic: (() {
        final guardedValue = map['automatic'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      userManaged: (() {
        final guardedValue = map['userManaged'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          UserManagedSecretmanagerV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
