// ignore_for_file: unused_element, unnecessary_cast

import 'get_healthcheck_http_config.dart';
import 'get_healthcheck_tcp_config.dart';

/// Result data returned by getHealthcheck.
class GetHealthcheckResult {
  /// The hostname or IP address of the origin server to run health checks on.
  final String? address;
  /// A list of regions from which to run health checks. Null means Cloudflare will pick a default region.
  final List<String>? checkRegions;
  /// The number of consecutive fails required from a health check before changing the health to unhealthy.
  final int? consecutiveFails;
  /// The number of consecutive successes required from a health check before changing the health to healthy.
  final int? consecutiveSuccesses;
  final String? createdOn;
  /// A human-readable description of the health check.
  final String? description;
  /// The current failure reason if status is unhealthy.
  final String? failureReason;
  /// Identifier
  final String? healthcheckId;
  /// Parameters specific to an HTTP or HTTPS health check.
  final GetHealthcheckHttpConfig? httpConfig;
  /// Identifier
  final String? id;
  /// The interval between each health check. Shorter intervals may give quicker notifications if the origin status changes, but will increase load on the origin as we check from multiple locations.
  final int? interval;
  final String? modifiedOn;
  /// A short name to identify the health check. Only alphanumeric characters, hyphens and underscores are allowed.
  final String? name;
  /// The number of retries to attempt in case of a timeout before marking the origin as unhealthy. Retries are attempted immediately.
  final int? retries;
  /// The current status of the origin server according to the health check.
  /// Available values: "unknown", "healthy", "unhealthy", "suspended".
  final String? status;
  /// If suspended, no health checks are sent to the origin.
  final bool? suspended;
  /// Parameters specific to TCP health check.
  final GetHealthcheckTcpConfig? tcpConfig;
  /// The timeout (in seconds) before marking the health check as failed.
  final int? timeout;
  /// The protocol to use for the health check. Currently supported protocols are 'HTTP', 'HTTPS' and 'TCP'.
  final String? type;
  /// Identifier
  final String? zoneId;

  /// Creates a new [GetHealthcheckResult].
  /// [address] The hostname or IP address of the origin server to run health checks on.
  /// [checkRegions] A list of regions from which to run health checks. Null means Cloudflare will pick a default region.
  /// [consecutiveFails] The number of consecutive fails required from a health check before changing the health to unhealthy.
  /// [consecutiveSuccesses] The number of consecutive successes required from a health check before changing the health to healthy.
  /// [createdOn] Optional.
  /// [description] A human-readable description of the health check.
  /// [failureReason] The current failure reason if status is unhealthy.
  /// [healthcheckId] Identifier
  /// [httpConfig] Parameters specific to an HTTP or HTTPS health check.
  /// [id] Identifier
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
  const GetHealthcheckResult({
    this.address,
    this.checkRegions,
    this.consecutiveFails,
    this.consecutiveSuccesses,
    this.createdOn,
    this.description,
    this.failureReason,
    this.healthcheckId,
    this.httpConfig,
    this.id,
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
      'healthcheckId': ?healthcheckId,
      'httpConfig': ?httpConfig?.toMap(),
      'id': ?id,
      'interval': ?interval,
      'modifiedOn': ?modifiedOn,
      'name': ?name,
      'retries': ?retries,
      'status': ?status,
      'suspended': ?suspended,
      'tcpConfig': ?tcpConfig?.toMap(),
      'timeout': ?timeout,
      'type': ?type,
      'zoneId': ?zoneId,
    };
  }

  factory GetHealthcheckResult.fromMap(Map<String, dynamic> map) {
    return GetHealthcheckResult(
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return guardedValue as String; })(),
      checkRegions: (() { final guardedValue = map['checkRegions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      consecutiveFails: (() { final guardedValue = map['consecutiveFails']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      consecutiveSuccesses: (() { final guardedValue = map['consecutiveSuccesses']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      failureReason: (() { final guardedValue = map['failureReason']; if (guardedValue == null) return null; return guardedValue as String; })(),
      healthcheckId: (() { final guardedValue = map['healthcheckId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      httpConfig: (() { final guardedValue = map['httpConfig']; if (guardedValue == null) return null; return GetHealthcheckHttpConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      interval: (() { final guardedValue = map['interval']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      retries: (() { final guardedValue = map['retries']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      suspended: (() { final guardedValue = map['suspended']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      tcpConfig: (() { final guardedValue = map['tcpConfig']; if (guardedValue == null) return null; return GetHealthcheckTcpConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
