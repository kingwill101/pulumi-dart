// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getOdbDnsZone.
class GetOdbDnsZoneResult {
  final String? createTime;
  final String? deletionPolicy;
  final bool? deletionProtection;
  final String? domain;
  final Map<String, String>? effectiveLabels;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final Map<String, String>? labels;
  final String? location;
  final String? name;
  final String? odbDnsZoneId;
  final String? odbnetwork;
  final String? project;
  final Map<String, String>? pulumiLabels;
  final String? state;

  /// Creates a new [GetOdbDnsZoneResult].
  /// [createTime] Optional.
  /// [deletionPolicy] Optional.
  /// [deletionProtection] Optional.
  /// [domain] Optional.
  /// [effectiveLabels] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [labels] Optional.
  /// [location] Optional.
  /// [name] Optional.
  /// [odbDnsZoneId] Optional.
  /// [odbnetwork] Optional.
  /// [project] Optional.
  /// [pulumiLabels] Optional.
  /// [state] Optional.
  const GetOdbDnsZoneResult({
    this.createTime,
    this.deletionPolicy,
    this.deletionProtection,
    this.domain,
    this.effectiveLabels,
    this.id,
    this.labels,
    this.location,
    this.name,
    this.odbDnsZoneId,
    this.odbnetwork,
    this.project,
    this.pulumiLabels,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'deletionProtection': ?deletionProtection,
      'domain': ?domain,
      'effectiveLabels': ?effectiveLabels,
      'id': ?id,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'odbDnsZoneId': ?odbDnsZoneId,
      'odbnetwork': ?odbnetwork,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'state': ?state,
    };
  }

  factory GetOdbDnsZoneResult.fromMap(Map<String, dynamic> map) {
    return GetOdbDnsZoneResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return guardedValue as String; })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      odbDnsZoneId: (() { final guardedValue = map['odbDnsZoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      odbnetwork: (() { final guardedValue = map['odbnetwork']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
