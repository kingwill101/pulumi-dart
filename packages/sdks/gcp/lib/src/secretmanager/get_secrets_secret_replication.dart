// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_secrets_secret_replication_auto.dart';
import 'get_secrets_secret_replication_user_managed.dart';

class GetSecretsSecretReplication {
  /// The Secret will automatically be replicated without any restrictions.
  /// Structure is documented below.
  final pulumi.Input<List<GetSecretsSecretReplicationAuto>> autos;
  /// The Secret will be replicated to the regions specified by the user.
  /// Structure is documented below.
  final pulumi.Input<List<GetSecretsSecretReplicationUserManaged>> userManageds;

  /// Creates a new [GetSecretsSecretReplication].
  /// [autos] The Secret will automatically be replicated without any restrictions.
  /// [userManageds] The Secret will be replicated to the regions specified by the user.
  GetSecretsSecretReplication({
    required this.autos,
    required this.userManageds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autos': pulumi.Input.mapInputValue<List<GetSecretsSecretReplicationAuto>, List<Map<String, dynamic>>>(autos, (value) => pulumi.Input.encodeList<GetSecretsSecretReplicationAuto, Map<String, dynamic>>(value, (value) => value.toMap())),
      'userManageds': pulumi.Input.mapInputValue<List<GetSecretsSecretReplicationUserManaged>, List<Map<String, dynamic>>>(userManageds, (value) => pulumi.Input.encodeList<GetSecretsSecretReplicationUserManaged, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetSecretsSecretReplication.fromMap(Map<String, dynamic> map) {
    return GetSecretsSecretReplication(
      autos: pulumi.Input.fromValue(pulumi.Input.decodeList<GetSecretsSecretReplicationAuto>(map['autos']!, (value) => GetSecretsSecretReplicationAuto.fromMap((value as Map).cast<String, dynamic>()))),
      userManageds: pulumi.Input.fromValue(pulumi.Input.decodeList<GetSecretsSecretReplicationUserManaged>(map['userManageds']!, (value) => GetSecretsSecretReplicationUserManaged.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

