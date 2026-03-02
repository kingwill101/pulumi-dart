// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multicloud_data_transfer_config_service_state.dart';

class MulticloudDataTransferConfigService {
  /// The name of the service, like "big-query" or "cloud-storage".
  /// This corresponds to the map key in the API.
  final pulumi.Input<String> serviceName;
  /// (Output)
  /// The state and activation time details for the service.
  /// Structure is documented below.
  ///
  ///
  /// <a name="nested_services_states"></a>The `states` block contains:
  final pulumi.Input<List<MulticloudDataTransferConfigServiceState>>? states;

  /// Creates a new [MulticloudDataTransferConfigService].
  /// [serviceName] The name of the service, like "big-query" or "cloud-storage".
  /// [states] (Output)
  MulticloudDataTransferConfigService({
    required this.serviceName,
    this.states,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceName': serviceName,
      'states': ?pulumi.Input.mapOptionalInputValue<List<MulticloudDataTransferConfigServiceState>, List<Map<String, dynamic>>>(states, (value) => pulumi.Input.encodeList<MulticloudDataTransferConfigServiceState, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MulticloudDataTransferConfigService.fromMap(Map<String, dynamic> map) {
    return MulticloudDataTransferConfigService(
      serviceName: (map['serviceName'] as String).input(),
      states: map['states'] == null ? null : (pulumi.Input.decodeList<MulticloudDataTransferConfigServiceState>(map['states'], (value) => MulticloudDataTransferConfigServiceState.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

