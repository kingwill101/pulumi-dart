// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'healthcheck_http_config.dart';
import 'healthcheck_tcp_config.dart';

/// Input properties used for looking up and filtering Healthcheck resources.
class HealthcheckState {
  /// The hostname or IP address of the origin server to run health checks on.
  final pulumi.Input<String?>? address;
  /// A list of regions from which to run health checks. Null means Cloudflare will pick a default region.
  final pulumi.Input<List<String>?>? checkRegions;
  /// The number of consecutive fails required from a health check before changing the health to unhealthy.
  final pulumi.Input<int?>? consecutiveFails;
  /// The number of consecutive successes required from a health check before changing the health to healthy.
  final pulumi.Input<int?>? consecutiveSuccesses;
  final pulumi.Input<String?>? createdOn;
  /// A human-readable description of the health check.
  final pulumi.Input<String?>? description;
  /// The current failure reason if status is unhealthy.
  final pulumi.Input<String?>? failureReason;
  /// Parameters specific to an HTTP or HTTPS health check.
  final pulumi.Input<HealthcheckHttpConfig?>? httpConfig;
  /// The interval between each health check. Shorter intervals may give quicker notifications if the origin status changes, but will increase load on the origin as we check from multiple locations.
  final pulumi.Input<int?>? interval;
  final pulumi.Input<String?>? modifiedOn;
  /// A short name to identify the health check. Only alphanumeric characters, hyphens and underscores are allowed.
  final pulumi.Input<String?>? name;
  /// The number of retries to attempt in case of a timeout before marking the origin as unhealthy. Retries are attempted immediately.
  final pulumi.Input<int?>? retries;
  /// The current status of the origin server according to the health check.
  /// Available values: "unknown", "healthy", "unhealthy", "suspended".
  final pulumi.Input<String?>? status;
  /// If suspended, no health checks are sent to the origin.
  final pulumi.Input<bool?>? suspended;
  /// Parameters specific to TCP health check.
  final pulumi.Input<HealthcheckTcpConfig?>? tcpConfig;
  /// The timeout (in seconds) before marking the health check as failed.
  final pulumi.Input<int?>? timeout;
  /// The protocol to use for the health check. Currently supported protocols are 'HTTP', 'HTTPS' and 'TCP'.
  final pulumi.Input<String?>? type;
  /// Identifier
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [HealthcheckState].
  /// [address] The hostname or IP address of the origin server to run health checks on.
  /// [checkRegions] A list of regions from which to run health checks. Null means Cloudflare will pick a default region.
  /// [consecutiveFails] The number of consecutive fails required from a health check before changing the health to unhealthy.
  /// [consecutiveSuccesses] The number of consecutive successes required from a health check before changing the health to healthy.
  /// [createdOn] Optional.
  /// [description] A human-readable description of the health check.
  /// [failureReason] The current failure reason if status is unhealthy.
  /// [httpConfig] Parameters specific to an HTTP or HTTPS health check.
  /// [interval] The interval between each health check. Shorter intervals may give quicker notifications if the origin status changes, but will increase load on the origin as we check from multiple locations.
  /// [modifiedOn] Optional.
  /// [name] A short name to identify the health check. Only alphanumeric characters, hyphens and underscores are allowed.
  /// [retries] The number of retries to attempt in case of a timeout before marking the origin as unhealthy. Retries are attempted immediately.
  /// [status] The current status of the origin server according to the health check.
  /// [suspended] If suspended, no health checks are sent to the origin.
  /// [tcpConfig] Parameters specific to TCP health check.
  /// [timeout] The timeout (in seconds) before marking the health check as failed.
  /// [type] The protocol to use for the health check. Currently supported protocols are 'HTTP', 'HTTPS' and 'TCP'.
  /// [zoneId] Identifier
  const HealthcheckState({
    this.address,
    this.checkRegions,
    this.consecutiveFails,
    this.consecutiveSuccesses,
    this.createdOn,
    this.description,
    this.failureReason,
    this.httpConfig,
    this.interval,
    this.modifiedOn,
    this.name,
    this.retries,
    this.status,
    this.suspended,
    this.tcpConfig,
    this.timeout,
    this.type,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'checkRegions': ?checkRegions,
      'consecutiveFails': ?consecutiveFails,
      'consecutiveSuccesses': ?consecutiveSuccesses,
      'createdOn': ?createdOn,
      'description': ?description,
      'failureReason': ?failureReason,
      'httpConfig': ?pulumi.Input.mapOptionalInputValue<HealthcheckHttpConfig, Map<String, dynamic>>(httpConfig, (value) => value.toMap()),
      'interval': ?interval,
      'modifiedOn': ?modifiedOn,
      'name': ?name,
      'retries': ?retries,
      'status': ?status,
      'suspended': ?suspended,
      'tcpConfig': ?pulumi.Input.mapOptionalInputValue<HealthcheckTcpConfig, Map<String, dynamic>>(tcpConfig, (value) => value.toMap()),
      'timeout': ?timeout,
      'type': ?type,
      'zoneId': ?zoneId,
    };
  }

  factory HealthcheckState.fromMap(Map<String, dynamic> map) {
    return HealthcheckState(
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      checkRegions: (() { final guardedValue = map['checkRegions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      consecutiveFails: (() { final guardedValue = map['consecutiveFails']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      consecutiveSuccesses: (() { final guardedValue = map['consecutiveSuccesses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      failureReason: (() { final guardedValue = map['failureReason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpConfig: (() { final guardedValue = map['httpConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HealthcheckHttpConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      interval: (() { final guardedValue = map['interval']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retries: (() { final guardedValue = map['retries']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      suspended: (() { final guardedValue = map['suspended']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tcpConfig: (() { final guardedValue = map['tcpConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HealthcheckTcpConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
