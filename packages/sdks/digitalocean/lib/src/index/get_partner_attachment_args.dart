// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_partner_attachment_bgp.dart';

/// {@template pulumi_index_get_partner_attachment_get_partner_attachment_args_doc}
/// Arguments for getPartnerAttachment.
/// {@endtemplate}
/// {@macro pulumi_index_get_partner_attachment_get_partner_attachment_args_doc}
class GetPartnerAttachmentArgs {
  final pulumi.Input<GetPartnerAttachmentBgp>? bgp;
  final pulumi.Input<String>? id;
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? redundancyZone;

  /// Creates a new [GetPartnerAttachmentArgs].
  /// [bgp] Optional.
  /// [id] Optional.
  /// [name] Optional.
  /// [redundancyZone] Optional.
  GetPartnerAttachmentArgs({
    this.bgp,
    this.id,
    this.name,
    this.redundancyZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgp': ?pulumi.Input.mapOptionalInputValue<GetPartnerAttachmentBgp, Map<String, dynamic>>(bgp, (value) => value.toMap()),
      'id': ?id,
      'name': ?name,
      'redundancyZone': ?redundancyZone,
    };
  }

  factory GetPartnerAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return GetPartnerAttachmentArgs(
      bgp: (() { final guardedValue = map['bgp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetPartnerAttachmentBgp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      redundancyZone: (() { final guardedValue = map['redundancyZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

