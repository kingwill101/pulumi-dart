// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCertificateMapEntry.
class GetCertificateMapEntryResult {
  /// A set of Certificates defines for the given `hostname`. There can be defined up to four certificates in each Certificate Map Entry. Each certificate must match pattern `projects/*/locations/*/certificates/*`.
  final List<String>? certificates;
  /// The creation timestamp of a Certificate Map Entry.
  final String? createTime;
  /// One or more paragraphs of text description of a certificate map entry.
  final String? description;
  /// A Hostname (FQDN, e.g. `example.com`) or a wildcard hostname expression (`*.example.com`) for a set of hostnames with common suffix. Used as Server Name Indication (SNI) for selecting a proper certificate.
  final String? hostname;
  /// Set of labels associated with a Certificate Map Entry.
  final Map<String, String>? labels;
  /// A predefined matcher for particular cases, other than SNI selection.
  final String? matcher;
  /// A user-defined name of the Certificate Map Entry. Certificate Map Entry names must be unique globally and match pattern `projects/*/locations/*/certificateMaps/*/certificateMapEntries/*`.
  final String? name;
  /// A serving state of this Certificate Map Entry.
  final String? state;
  /// The update timestamp of a Certificate Map Entry.
  final String? updateTime;

  /// Creates a new [GetCertificateMapEntryResult].
  /// [certificates] A set of Certificates defines for the given `hostname`. There can be defined up to four certificates in each Certificate Map Entry. Each certificate must match pattern `projects/*/locations/*/certificates/*`.
  /// [createTime] The creation timestamp of a Certificate Map Entry.
  /// [description] One or more paragraphs of text description of a certificate map entry.
  /// [hostname] A Hostname (FQDN, e.g. `example.com`) or a wildcard hostname expression (`*.example.com`) for a set of hostnames with common suffix. Used as Server Name Indication (SNI) for selecting a proper certificate.
  /// [labels] Set of labels associated with a Certificate Map Entry.
  /// [matcher] A predefined matcher for particular cases, other than SNI selection.
  /// [name] A user-defined name of the Certificate Map Entry. Certificate Map Entry names must be unique globally and match pattern `projects/*/locations/*/certificateMaps/*/certificateMapEntries/*`.
  /// [state] A serving state of this Certificate Map Entry.
  /// [updateTime] The update timestamp of a Certificate Map Entry.
  const GetCertificateMapEntryResult({
    this.certificates,
    this.createTime,
    this.description,
    this.hostname,
    this.labels,
    this.matcher,
    this.name,
    this.state,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificates': ?certificates,
      'createTime': ?createTime,
      'description': ?description,
      'hostname': ?hostname,
      'labels': ?labels,
      'matcher': ?matcher,
      'name': ?name,
      'state': ?state,
      'updateTime': ?updateTime,
    };
  }

  factory GetCertificateMapEntryResult.fromMap(Map<String, dynamic> map) {
    return GetCertificateMapEntryResult(
      certificates: (() { final guardedValue = map['certificates']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      matcher: (() { final guardedValue = map['matcher']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
