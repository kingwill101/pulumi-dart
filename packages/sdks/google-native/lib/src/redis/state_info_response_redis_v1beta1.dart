// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'update_info_response_redis_v1beta1.dart';

/// Represents additional information about the state of the cluster.
class StateInfoResponseRedisV1beta1 {
  /// Describes ongoing update on the cluster when cluster state is UPDATING.
  final pulumi.Input<UpdateInfoResponseRedisV1beta1> updateInfo;

  /// Creates a new [StateInfoResponseRedisV1beta1].
  /// [updateInfo] Describes ongoing update on the cluster when cluster state is UPDATING.
  StateInfoResponseRedisV1beta1({required this.updateInfo});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'updateInfo':
          pulumi.Input.mapInputValue<
            UpdateInfoResponseRedisV1beta1,
            Map<String, dynamic>
          >(updateInfo, (value) => value.toMap()),
    };
  }

  factory StateInfoResponseRedisV1beta1.fromMap(Map<String, dynamic> map) {
    return StateInfoResponseRedisV1beta1(
      updateInfo: pulumi.Input.fromValue(
        UpdateInfoResponseRedisV1beta1.fromMap(
          (map['updateInfo']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
