// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getEndpoint.
class GetEndpointResult {
  /// The create time timestamp.
  final String? createTime;
  /// User-provided description of the endpoint
  final String? description;
  /// The fully qualified URL of the endpoint's ILB Forwarding Rule.
  final String? endpointForwardingRule;
  /// The IP address of the IDS Endpoint's ILB.
  final String? endpointIp;
  /// The labels of the endpoint.
  final Map<String, String>? labels;
  /// The name of the endpoint.
  final String? name;
  /// The fully qualified URL of the network to which the IDS Endpoint is attached.
  final String? network;
  /// Lowest threat severity that this endpoint will alert on.
  final String? severity;
  /// Current state of the endpoint.
  final String? state;
  /// List of threat IDs to be excepted from generating alerts.
  final List<String>? threatExceptions;
  /// Whether the endpoint should report traffic logs in addition to threat logs.
  final bool? trafficLogs;
  /// The update time timestamp.
  final String? updateTime;

  /// Creates a new [GetEndpointResult].
  /// [createTime] The create time timestamp.
  /// [description] User-provided description of the endpoint
  /// [endpointForwardingRule] The fully qualified URL of the endpoint's ILB Forwarding Rule.
  /// [endpointIp] The IP address of the IDS Endpoint's ILB.
  /// [labels] The labels of the endpoint.
  /// [name] The name of the endpoint.
  /// [network] The fully qualified URL of the network to which the IDS Endpoint is attached.
  /// [severity] Lowest threat severity that this endpoint will alert on.
  /// [state] Current state of the endpoint.
  /// [threatExceptions] List of threat IDs to be excepted from generating alerts.
  /// [trafficLogs] Whether the endpoint should report traffic logs in addition to threat logs.
  /// [updateTime] The update time timestamp.
  const GetEndpointResult({
    this.createTime,
    this.description,
    this.endpointForwardingRule,
    this.endpointIp,
    this.labels,
    this.name,
    this.network,
    this.severity,
    this.state,
    this.threatExceptions,
    this.trafficLogs,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'endpointForwardingRule': ?endpointForwardingRule,
      'endpointIp': ?endpointIp,
      'labels': ?labels,
      'name': ?name,
      'network': ?network,
      'severity': ?severity,
      'state': ?state,
      'threatExceptions': ?threatExceptions,
      'trafficLogs': ?trafficLogs,
      'updateTime': ?updateTime,
    };
  }

  factory GetEndpointResult.fromMap(Map<String, dynamic> map) {
    return GetEndpointResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endpointForwardingRule: (() { final guardedValue = map['endpointForwardingRule']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endpointIp: (() { final guardedValue = map['endpointIp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return guardedValue as String; })(),
      severity: (() { final guardedValue = map['severity']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      threatExceptions: (() { final guardedValue = map['threatExceptions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      trafficLogs: (() { final guardedValue = map['trafficLogs']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
