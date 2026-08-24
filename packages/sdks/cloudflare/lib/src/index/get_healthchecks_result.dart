// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_healthchecks_result_http_config.dart';
import 'get_healthchecks_result_tcp_config.dart';

class GetHealthchecksResult {
  /// The hostname or IP address of the origin server to run health checks on.
  final pulumi.Input<String> address;
  /// A list of regions from which to run health checks. Null means Cloudflare will pick a default region.
  final pulumi.Input<List<String>> checkRegions;
  /// The number of consecutive fails required from a health check before changing the health to unhealthy.
  final pulumi.Input<int> consecutiveFails;
  /// The number of consecutive successes required from a health check before changing the health to healthy.
  final pulumi.Input<int> consecutiveSuccesses;
  final pulumi.Input<String> createdOn;
  /// A human-readable description of the health check.
  final pulumi.Input<String> description;
  /// The current failure reason if status is unhealthy.
  final pulumi.Input<String> failureReason;
  /// Parameters specific to an HTTP or HTTPS health check.
  final pulumi.Input<GetHealthchecksResultHttpConfig> httpConfig;
  /// Identifier
  final pulumi.Input<String> id;
  /// The interval between each health check. Shorter intervals may give quicker notifications if the origin status changes, but will increase load on the origin as we check from multiple locations.
  final pulumi.Input<int> interval;
  final pulumi.Input<String> modifiedOn;
  /// A short name to identify the health check. Only alphanumeric characters, hyphens and underscores are allowed.
  final pulumi.Input<String> name;
  /// The number of retries to attempt in case of a timeout before marking the origin as unhealthy. Retries are attempted immediately.
  final pulumi.Input<int> retries;
  /// The current status of the origin server according to the health check.
  /// Available values: "unknown", "healthy", "unhealthy", "suspended".
  final pulumi.Input<String> status;
  /// If suspended, no health checks are sent to the origin.
  final pulumi.Input<bool> suspended;
  /// Parameters specific to TCP health check.
  final pulumi.Input<GetHealthchecksResultTcpConfig> tcpConfig;
  /// The timeout (in seconds) before marking the health check as failed.
  final pulumi.Input<int> timeout;
  /// The protocol to use for the health check. Currently supported protocols are 'HTTP', 'HTTPS' and 'TCP'.
  final pulumi.Input<String> type;

  /// Creates a new [GetHealthchecksResult].
  /// [address] The hostname or IP address of the origin server to run health checks on.
  /// [checkRegions] A list of regions from which to run health checks. Null means Cloudflare will pick a default region.
  /// [consecutiveFails] The number of consecutive fails required from a health check before changing the health to unhealthy.
  /// [consecutiveSuccesses] The number of consecutive successes required from a health check before changing the health to healthy.
  /// [createdOn] Required.
  /// [description] A human-readable description of the health check.
  /// [failureReason] The current failure reason if status is unhealthy.
  /// [httpConfig] Parameters specific to an HTTP or HTTPS health check.
  /// [id] Identifier
  /// [interval] The interval between each health check. Shorter intervals may give quicker notifications if the origin status changes, but will increase load on the origin as we check from multiple locations.
  /// [modifiedOn] Required.
  /// [name] A short name to identify the health check. Only alphanumeric characters, hyphens and underscores are allowed.
  /// [retries] The number of retries to attempt in case of a timeout before marking the origin as unhealthy. Retries are attempted immediately.
  /// [status] The current status of the origin server according to the health check.
  /// [suspended] If suspended, no health checks are sent to the origin.
  /// [tcpConfig] Parameters specific to TCP health check.
  /// [timeout] The timeout (in seconds) before marking the health check as failed.
  /// [type] The protocol to use for the health check. Currently supported protocols are 'HTTP', 'HTTPS' and 'TCP'.
  const GetHealthchecksResult({
    required this.address,
    required this.checkRegions,
    required this.consecutiveFails,
    required this.consecutiveSuccesses,
    required this.createdOn,
    required this.description,
    required this.failureReason,
    required this.httpConfig,
    required this.id,
    required this.interval,
    required this.modifiedOn,
    required this.name,
    required this.retries,
    required this.status,
    required this.suspended,
    required this.tcpConfig,
    required this.timeout,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'checkRegions': checkRegions,
      'consecutiveFails': consecutiveFails,
      'consecutiveSuccesses': consecutiveSuccesses,
      'createdOn': createdOn,
      'description': description,
      'failureReason': failureReason,
      'httpConfig': pulumi.Input.mapInputValue<GetHealthchecksResultHttpConfig, Map<String, dynamic>>(httpConfig, (value) => value.toMap()),
      'id': id,
      'interval': interval,
      'modifiedOn': modifiedOn,
      'name': name,
      'retries': retries,
      'status': status,
      'suspended': suspended,
      'tcpConfig': pulumi.Input.mapInputValue<GetHealthchecksResultTcpConfig, Map<String, dynamic>>(tcpConfig, (value) => value.toMap()),
      'timeout': timeout,
      'type': type,
    };
  }

  factory GetHealthchecksResult.fromMap(Map<String, dynamic> map) {
    return GetHealthchecksResult(
      address: pulumi.Input.fromValue(map['address'] as String),
      checkRegions: pulumi.Input.fromValue((map['checkRegions'] as List).cast<String>()),
      consecutiveFails: pulumi.Input.fromValue((map['consecutiveFails'] as num).toInt()),
      consecutiveSuccesses: pulumi.Input.fromValue((map['consecutiveSuccesses'] as num).toInt()),
      createdOn: pulumi.Input.fromValue(map['createdOn'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      failureReason: pulumi.Input.fromValue(map['failureReason'] as String),
      httpConfig: pulumi.Input.fromValue(GetHealthchecksResultHttpConfig.fromMap((map['httpConfig']! as Map).cast<String, dynamic>())),
      id: pulumi.Input.fromValue(map['id'] as String),
      interval: pulumi.Input.fromValue((map['interval'] as num).toInt()),
      modifiedOn: pulumi.Input.fromValue(map['modifiedOn'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      retries: pulumi.Input.fromValue((map['retries'] as num).toInt()),
      status: pulumi.Input.fromValue(map['status'] as String),
      suspended: pulumi.Input.fromValue(map['suspended'] as bool),
      tcpConfig: pulumi.Input.fromValue(GetHealthchecksResultTcpConfig.fromMap((map['tcpConfig']! as Map).cast<String, dynamic>())),
      timeout: pulumi.Input.fromValue((map['timeout'] as num).toInt()),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
