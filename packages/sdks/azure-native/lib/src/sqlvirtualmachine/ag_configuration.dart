// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ag_replica.dart';

/// Availability group configuration.
class AgConfiguration {
  /// Replica configurations.
  final pulumi.Input<List<AgReplica>>? replicas;

  /// Creates a new [AgConfiguration].
  /// [replicas] Replica configurations.
  AgConfiguration({this.replicas});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'replicas':
          ?pulumi.Input.mapOptionalInputValue<
            List<AgReplica>,
            List<Map<String, dynamic>>
          >(
            replicas,
            (value) => pulumi.Input.encodeList<AgReplica, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
    };
  }

  factory AgConfiguration.fromMap(Map<String, dynamic> map) {
    return AgConfiguration(
      replicas: (() {
        final guardedValue = map['replicas'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AgReplica>(
            guardedValue,
            (value) =>
                AgReplica.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
    );
  }
}
