// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDomainsDomain {
  /// The list of IPs that may perform a zone transfer for this Domain.
  final pulumi.Input<List<String>> axfrIps;
  /// A description for this Domain.
  final pulumi.Input<String> description;
  /// The domain this Domain represents. These must be unique in our system; you cannot have two Domains representing the same domain
  final pulumi.Input<String>? domain;
  /// The amount of time in seconds that may pass before this Domain is no longer authoritative.
  final pulumi.Input<int> expireSec;
  /// The group this Domain belongs to.
  final pulumi.Input<String> group;
  /// The unique ID of this Domain.
  final pulumi.Input<int>? id;
  /// The IP addresses representing the master DNS for this Domain.
  final pulumi.Input<List<String>> masterIps;
  /// The amount of time in seconds before this Domain should be refreshed.
  final pulumi.Input<int> refreshSec;
  /// The interval, in seconds, at which a failed refresh should be retried.
  final pulumi.Input<int> retrySec;
  /// Start of Authority email address.
  final pulumi.Input<String> soaEmail;
  /// Used to control whether this Domain is currently being rendered. (`disabled`, `active`)
  final pulumi.Input<String> status;
  /// An array of tags applied to this object. Tags are case-insensitive and are for organizational purposes only.
  final pulumi.Input<List<String>> tags;
  /// 'Time to Live'-the amount of time in seconds that this Domain's records may be cached by resolvers or other domain servers.
  final pulumi.Input<int> ttlSec;
  /// If this Domain represents the authoritative source of information for the domain it describes, or if it is a read-only copy of a master (also called a slave) (`master`, `slave`)
  final pulumi.Input<String> type;

  /// Creates a new [GetDomainsDomain].
  /// [axfrIps] The list of IPs that may perform a zone transfer for this Domain.
  /// [description] A description for this Domain.
  /// [domain] The domain this Domain represents. These must be unique in our system; you cannot have two Domains representing the same domain
  /// [expireSec] The amount of time in seconds that may pass before this Domain is no longer authoritative.
  /// [group] The group this Domain belongs to.
  /// [id] The unique ID of this Domain.
  /// [masterIps] The IP addresses representing the master DNS for this Domain.
  /// [refreshSec] The amount of time in seconds before this Domain should be refreshed.
  /// [retrySec] The interval, in seconds, at which a failed refresh should be retried.
  /// [soaEmail] Start of Authority email address.
  /// [status] Used to control whether this Domain is currently being rendered. (`disabled`, `active`)
  /// [tags] An array of tags applied to this object. Tags are case-insensitive and are for organizational purposes only.
  /// [ttlSec] 'Time to Live'-the amount of time in seconds that this Domain's records may be cached by resolvers or other domain servers.
  /// [type] If this Domain represents the authoritative source of information for the domain it describes, or if it is a read-only copy of a master (also called a slave) (`master`, `slave`)
  GetDomainsDomain({
    required this.axfrIps,
    required this.description,
    this.domain,
    required this.expireSec,
    required this.group,
    this.id,
    required this.masterIps,
    required this.refreshSec,
    required this.retrySec,
    required this.soaEmail,
    required this.status,
    required this.tags,
    required this.ttlSec,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'axfrIps': axfrIps,
      'description': description,
      'domain': ?domain,
      'expireSec': expireSec,
      'group': group,
      'id': ?id,
      'masterIps': masterIps,
      'refreshSec': refreshSec,
      'retrySec': retrySec,
      'soaEmail': soaEmail,
      'status': status,
      'tags': tags,
      'ttlSec': ttlSec,
      'type': type,
    };
  }

  factory GetDomainsDomain.fromMap(Map<String, dynamic> map) {
    return GetDomainsDomain(
      axfrIps: pulumi.Input.fromValue((map['axfrIps'] as List).cast<String>()),
      description: pulumi.Input.fromValue(map['description'] as String),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expireSec: pulumi.Input.fromValue(map['expireSec'] as int),
      group: pulumi.Input.fromValue(map['group'] as String),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      masterIps: pulumi.Input.fromValue((map['masterIps'] as List).cast<String>()),
      refreshSec: pulumi.Input.fromValue(map['refreshSec'] as int),
      retrySec: pulumi.Input.fromValue(map['retrySec'] as int),
      soaEmail: pulumi.Input.fromValue(map['soaEmail'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as List).cast<String>()),
      ttlSec: pulumi.Input.fromValue(map['ttlSec'] as int),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

