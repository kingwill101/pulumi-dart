// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replica.dart';

/// A replication policy that replicates the Secret payload into the locations specified in Secret.replication.user_managed.replicas
class UserManaged {
  /// The list of Replicas for this Secret. Cannot be empty.
  final pulumi.Input<List<Replica>> replicas;

  /// Creates a new [UserManaged].
  /// [replicas] The list of Replicas for this Secret. Cannot be empty.
  UserManaged({required this.replicas});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'replicas':
          pulumi.Input.mapInputValue<List<Replica>, List<Map<String, dynamic>>>(
            replicas,
            (value) => pulumi.Input.encodeList<Replica, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
    };
  }

  factory UserManaged.fromMap(Map<String, dynamic> map) {
    return UserManaged(
      replicas: pulumi.Input.fromValue(
        pulumi.Input.decodeList<Replica>(
          map['replicas']!,
          (value) => Replica.fromMap((value as Map).cast<String, dynamic>()),
        ),
      ),
    );
  }
}
