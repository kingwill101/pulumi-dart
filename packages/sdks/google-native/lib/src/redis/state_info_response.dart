// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'update_info_response.dart';

/// Represents additional information about the state of the cluster.
class StateInfoResponse {
  /// Describes ongoing update on the cluster when cluster state is UPDATING.
  final pulumi.Input<UpdateInfoResponse> updateInfo;

  /// Creates a new [StateInfoResponse].
  /// [updateInfo] Describes ongoing update on the cluster when cluster state is UPDATING.
  const StateInfoResponse({
    required this.updateInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'updateInfo': pulumi.Input.mapInputValue<UpdateInfoResponse, Map<String, dynamic>>(updateInfo, (value) => value.toMap()),
    };
  }

  factory StateInfoResponse.fromMap(Map<String, dynamic> map) {
    return StateInfoResponse(
      updateInfo: pulumi.Input.fromValue(UpdateInfoResponse.fromMap((map['updateInfo']! as Map).cast<String, dynamic>())),
    );
  }
}

