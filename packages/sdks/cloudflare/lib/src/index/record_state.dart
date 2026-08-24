// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'record_data.dart';
import 'record_settings.dart';

/// Input properties used for looking up and filtering Record resources.
class RecordState {
  /// Comments or notes about the DNS record. This field has no effect on DNS responses.
  final pulumi.Input<String?>? comment;
  /// When the record comment was last modified. Omitted if there is no comment.
  final pulumi.Input<String?>? commentModifiedOn;
  /// A valid IPv4 address.
  final pulumi.Input<String?>? content;
  /// When the record was created.
  final pulumi.Input<String?>? createdOn;
  /// Components of a MX record.
  final pulumi.Input<RecordData?>? data;
  /// Extra Cloudflare-specific information about the record.
  final pulumi.Input<String?>? meta;
  /// When the record was last modified.
  final pulumi.Input<String?>? modifiedOn;
  /// DNS record name (or @ for the zone apex) in Punycode.
  final pulumi.Input<String?>? name;
  /// Required for MX, SRV and URI records; unused by other record types. Records with lower priorities are preferred.
  final pulumi.Input<double?>? priority;
  /// Enables private network routing to the origin.
  final pulumi.Input<bool?>? privateRouting;
  /// Whether the record can be proxied by Cloudflare or not.
  final pulumi.Input<bool?>? proxiable;
  /// Whether the record is receiving the performance and security benefits of Cloudflare.
  final pulumi.Input<bool?>? proxied;
  /// Settings for the DNS record.
  final pulumi.Input<RecordSettings?>? settings;
  /// Custom tags for the DNS record. This field has no effect on DNS responses.
  final pulumi.Input<List<String>?>? tags;
  /// When the record tags were last modified. Omitted if there are no tags.
  final pulumi.Input<String?>? tagsModifiedOn;
  /// Time To Live (TTL) of the DNS record in seconds. Setting to 1 means 'automatic'. Value must be between 60 and 86400, with the minimum reduced to 30 for Enterprise zones.
  final pulumi.Input<double?>? ttl;
  /// Record type.
  /// Available values: "A", "AAAA", "CNAME", "MX", "NS", "OPENPGPKEY", "PTR", "TXT", "CAA", "CERT", "DNSKEY", "DS", "HTTPS", "LOC", "NAPTR", "SMIMEA", "SRV", "SSHFP", "SVCB", "TLSA", "URI".
  final pulumi.Input<String?>? type;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [RecordState].
  /// [comment] Comments or notes about the DNS record. This field has no effect on DNS responses.
  /// [commentModifiedOn] When the record comment was last modified. Omitted if there is no comment.
  /// [content] A valid IPv4 address.
  /// [createdOn] When the record was created.
  /// [data] Components of a MX record.
  /// [meta] Extra Cloudflare-specific information about the record.
  /// [modifiedOn] When the record was last modified.
  /// [name] DNS record name (or @ for the zone apex) in Punycode.
  /// [priority] Required for MX, SRV and URI records; unused by other record types. Records with lower priorities are preferred.
  /// [privateRouting] Enables private network routing to the origin.
  /// [proxiable] Whether the record can be proxied by Cloudflare or not.
  /// [proxied] Whether the record is receiving the performance and security benefits of Cloudflare.
  /// [settings] Settings for the DNS record.
  /// [tags] Custom tags for the DNS record. This field has no effect on DNS responses.
  /// [tagsModifiedOn] When the record tags were last modified. Omitted if there are no tags.
  /// [ttl] Time To Live (TTL) of the DNS record in seconds. Setting to 1 means 'automatic'. Value must be between 60 and 86400, with the minimum reduced to 30 for Enterprise zones.
  /// [type] Record type.
  /// [zoneId] Identifier.
  const RecordState({
    this.comment,
    this.commentModifiedOn,
    this.content,
    this.createdOn,
    this.data,
    this.meta,
    this.modifiedOn,
    this.name,
    this.priority,
    this.privateRouting,
    this.proxiable,
    this.proxied,
    this.settings,
    this.tags,
    this.tagsModifiedOn,
    this.ttl,
    this.type,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': ?comment,
      'commentModifiedOn': ?commentModifiedOn,
      'content': ?content,
      'createdOn': ?createdOn,
      'data': ?pulumi.Input.mapOptionalInputValue<RecordData, Map<String, dynamic>>(data, (value) => value.toMap()),
      'meta': ?meta,
      'modifiedOn': ?modifiedOn,
      'name': ?name,
      'priority': ?priority,
      'privateRouting': ?privateRouting,
      'proxiable': ?proxiable,
      'proxied': ?proxied,
      'settings': ?pulumi.Input.mapOptionalInputValue<RecordSettings, Map<String, dynamic>>(settings, (value) => value.toMap()),
      'tags': ?tags,
      'tagsModifiedOn': ?tagsModifiedOn,
      'ttl': ?ttl,
      'type': ?type,
      'zoneId': ?zoneId,
    };
  }

  factory RecordState.fromMap(Map<String, dynamic> map) {
    return RecordState(
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      commentModifiedOn: (() { final guardedValue = map['commentModifiedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      data: (() { final guardedValue = map['data']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RecordData.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      meta: (() { final guardedValue = map['meta']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      privateRouting: (() { final guardedValue = map['privateRouting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      proxiable: (() { final guardedValue = map['proxiable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      proxied: (() { final guardedValue = map['proxied']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RecordSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tagsModifiedOn: (() { final guardedValue = map['tagsModifiedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
