// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_database_postgresql_config_pglookout_max_failover_replication_time_lag.dart';

class GetDatabasePostgresqlConfigPglookout {
  final pulumi.Input<GetDatabasePostgresqlConfigPglookoutMaxFailoverReplicationTimeLag> maxFailoverReplicationTimeLag;

  /// Creates a new [GetDatabasePostgresqlConfigPglookout].
  /// [maxFailoverReplicationTimeLag] Required.
  const GetDatabasePostgresqlConfigPglookout({
    required this.maxFailoverReplicationTimeLag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxFailoverReplicationTimeLag': pulumi.Input.mapInputValue<GetDatabasePostgresqlConfigPglookoutMaxFailoverReplicationTimeLag, Map<String, dynamic>>(maxFailoverReplicationTimeLag, (value) => value.toMap()),
    };
  }

  factory GetDatabasePostgresqlConfigPglookout.fromMap(Map<String, dynamic> map) {
    return GetDatabasePostgresqlConfigPglookout(
      maxFailoverReplicationTimeLag: pulumi.Input.fromValue(GetDatabasePostgresqlConfigPglookoutMaxFailoverReplicationTimeLag.fromMap((map['maxFailoverReplicationTimeLag']! as Map).cast<String, dynamic>())),
    );
  }
}

