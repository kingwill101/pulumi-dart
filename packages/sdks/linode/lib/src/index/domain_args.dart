// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_domain_domain_args_doc}
/// The set of arguments for Domain.
/// {@endtemplate}
/// {@macro pulumi_index_domain_domain_args_doc}
class DomainArgs {
  /// The list of IPs that may perform a zone transfer for this Domain. This is potentially dangerous, and should be set to an empty list unless you intend to use it.
  final pulumi.Input<List<String>>? axfrIps;
  /// A description for this Domain. This is for display purposes only.
  final pulumi.Input<String>? description;
  /// The domain this Domain represents. These must be unique in our system; you cannot have two Domains representing the same domain.
  final pulumi.Input<String> domain;
  /// The amount of time in seconds that may pass before this Domain is no longer authoritative. Valid values are 0, 30, 120, 300, 3600, 7200, 14400, 28800, 57600, 86400, 172800, 345600, 604800, 1209600, and 2419200 - any other value will be rounded to the nearest valid value.
  final pulumi.Input<int>? expireSec;
  /// The group this Domain belongs to. This is for display purposes only.
  final pulumi.Input<String>? group;
  /// The IP addresses representing the master DNS for this Domain.
  ///
  /// - - -
  final pulumi.Input<List<String>>? masterIps;
  /// The amount of time in seconds before this Domain should be refreshed. Valid values are 0, 30, 120, 300, 3600, 7200, 14400, 28800, 57600, 86400, 172800, 345600, 604800, 1209600, and 2419200 - any other value will be rounded to the nearest valid value.
  final pulumi.Input<int>? refreshSec;
  /// The interval, in seconds, at which a failed refresh should be retried. Valid values are 0, 30, 120, 300, 3600, 7200, 14400, 28800, 57600, 86400, 172800, 345600, 604800, 1209600, and 2419200 - any other value will be rounded to the nearest valid value.
  final pulumi.Input<int>? retrySec;
  /// Start of Authority email address. This is required for master Domains.
  final pulumi.Input<String>? soaEmail;
  /// Used to control whether this Domain is currently being rendered (defaults to "active").
  final pulumi.Input<String>? status;
  /// A list of tags applied to this object. Tags are case-insensitive and are for organizational purposes only.
  final pulumi.Input<List<String>>? tags;
  /// 'Time to Live' - the amount of time in seconds that this Domain's records may be cached by resolvers or other domain servers. Valid values are 0, 30, 120, 300, 3600, 7200, 14400, 28800, 57600, 86400, 172800, 345600, 604800, 1209600, and 2419200 - any other value will be rounded to the nearest valid value.
  final pulumi.Input<int>? ttlSec;
  /// If this Domain represents the authoritative source of information for the domain it describes, or if it is a read-only copy of a master (also called a slave).
  final pulumi.Input<String> type;

  /// Creates a new [DomainArgs].
  /// [axfrIps] The list of IPs that may perform a zone transfer for this Domain. This is potentially dangerous, and should be set to an empty list unless you intend to use it.
  /// [description] A description for this Domain. This is for display purposes only.
  /// [domain] The domain this Domain represents. These must be unique in our system; you cannot have two Domains representing the same domain.
  /// [expireSec] The amount of time in seconds that may pass before this Domain is no longer authoritative. Valid values are 0, 30, 120, 300, 3600, 7200, 14400, 28800, 57600, 86400, 172800, 345600, 604800, 1209600, and 2419200 - any other value will be rounded to the nearest valid value.
  /// [group] The group this Domain belongs to. This is for display purposes only.
  /// [masterIps] The IP addresses representing the master DNS for this Domain.
  /// [refreshSec] The amount of time in seconds before this Domain should be refreshed. Valid values are 0, 30, 120, 300, 3600, 7200, 14400, 28800, 57600, 86400, 172800, 345600, 604800, 1209600, and 2419200 - any other value will be rounded to the nearest valid value.
  /// [retrySec] The interval, in seconds, at which a failed refresh should be retried. Valid values are 0, 30, 120, 300, 3600, 7200, 14400, 28800, 57600, 86400, 172800, 345600, 604800, 1209600, and 2419200 - any other value will be rounded to the nearest valid value.
  /// [soaEmail] Start of Authority email address. This is required for master Domains.
  /// [status] Used to control whether this Domain is currently being rendered (defaults to "active").
  /// [tags] A list of tags applied to this object. Tags are case-insensitive and are for organizational purposes only.
  /// [ttlSec] 'Time to Live' - the amount of time in seconds that this Domain's records may be cached by resolvers or other domain servers. Valid values are 0, 30, 120, 300, 3600, 7200, 14400, 28800, 57600, 86400, 172800, 345600, 604800, 1209600, and 2419200 - any other value will be rounded to the nearest valid value.
  /// [type] If this Domain represents the authoritative source of information for the domain it describes, or if it is a read-only copy of a master (also called a slave).
  DomainArgs({
    this.axfrIps,
    this.description,
    required this.domain,
    this.expireSec,
    this.group,
    this.masterIps,
    this.refreshSec,
    this.retrySec,
    this.soaEmail,
    this.status,
    this.tags,
    this.ttlSec,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'axfrIps': ?axfrIps,
      'description': ?description,
      'domain': domain,
      'expireSec': ?expireSec,
      'group': ?group,
      'masterIps': ?masterIps,
      'refreshSec': ?refreshSec,
      'retrySec': ?retrySec,
      'soaEmail': ?soaEmail,
      'status': ?status,
      'tags': ?tags,
      'ttlSec': ?ttlSec,
      'type': type,
    };
  }

  factory DomainArgs.fromMap(Map<String, dynamic> map) {
    return DomainArgs(
      axfrIps: (() { final guardedValue = map['axfrIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domain: pulumi.Input.fromValue(map['domain'] as String),
      expireSec: (() { final guardedValue = map['expireSec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      group: (() { final guardedValue = map['group']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      masterIps: (() { final guardedValue = map['masterIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      refreshSec: (() { final guardedValue = map['refreshSec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      retrySec: (() { final guardedValue = map['retrySec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      soaEmail: (() { final guardedValue = map['soaEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ttlSec: (() { final guardedValue = map['ttlSec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

