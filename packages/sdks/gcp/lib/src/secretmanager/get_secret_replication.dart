// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_secret_replication_auto.dart';
import 'get_secret_replication_user_managed.dart';

class GetSecretReplication {
  /// The Secret will automatically be replicated without any restrictions.
  final pulumi.Input<List<GetSecretReplicationAuto>> autos;

  /// The Secret will be replicated to the regions specified by the user.
  final pulumi.Input<List<GetSecretReplicationUserManaged>> userManageds;

  /// Creates a new [GetSecretReplication].
  /// [autos] The Secret will automatically be replicated without any restrictions.
  /// [userManageds] The Secret will be replicated to the regions specified by the user.
  GetSecretReplication({required this.autos, required this.userManageds});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autos':
          pulumi.Input.mapInputValue<
            List<GetSecretReplicationAuto>,
            List<Map<String, dynamic>>
          >(
            autos,
            (value) =>
                pulumi.Input.encodeList<
                  GetSecretReplicationAuto,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'userManageds':
          pulumi.Input.mapInputValue<
            List<GetSecretReplicationUserManaged>,
            List<Map<String, dynamic>>
          >(
            userManageds,
            (value) =>
                pulumi.Input.encodeList<
                  GetSecretReplicationUserManaged,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetSecretReplication.fromMap(Map<String, dynamic> map) {
    return GetSecretReplication(
      autos: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetSecretReplicationAuto>(
          map['autos']!,
          (value) => GetSecretReplicationAuto.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      userManageds: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetSecretReplicationUserManaged>(
          map['userManageds']!,
          (value) => GetSecretReplicationUserManaged.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
