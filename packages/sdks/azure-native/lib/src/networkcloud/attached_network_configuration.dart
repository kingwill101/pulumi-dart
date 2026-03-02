// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'l2_network_attachment_configuration.dart';
import 'l3_network_attachment_configuration.dart';
import 'trunked_network_attachment_configuration.dart';

class AttachedNetworkConfiguration {
  /// The list of Layer 2 Networks and related configuration for attachment.
  final pulumi.Input<List<L2NetworkAttachmentConfiguration>>? l2Networks;
  /// The list of Layer 3 Networks and related configuration for attachment.
  final pulumi.Input<List<L3NetworkAttachmentConfiguration>>? l3Networks;
  /// The list of Trunked Networks and related configuration for attachment.
  final pulumi.Input<List<TrunkedNetworkAttachmentConfiguration>>? trunkedNetworks;

  /// Creates a new [AttachedNetworkConfiguration].
  /// [l2Networks] The list of Layer 2 Networks and related configuration for attachment.
  /// [l3Networks] The list of Layer 3 Networks and related configuration for attachment.
  /// [trunkedNetworks] The list of Trunked Networks and related configuration for attachment.
  AttachedNetworkConfiguration({
    this.l2Networks,
    this.l3Networks,
    this.trunkedNetworks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'l2Networks': ?pulumi.Input.mapOptionalInputValue<List<L2NetworkAttachmentConfiguration>, List<Map<String, dynamic>>>(l2Networks, (value) => pulumi.Input.encodeList<L2NetworkAttachmentConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'l3Networks': ?pulumi.Input.mapOptionalInputValue<List<L3NetworkAttachmentConfiguration>, List<Map<String, dynamic>>>(l3Networks, (value) => pulumi.Input.encodeList<L3NetworkAttachmentConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'trunkedNetworks': ?pulumi.Input.mapOptionalInputValue<List<TrunkedNetworkAttachmentConfiguration>, List<Map<String, dynamic>>>(trunkedNetworks, (value) => pulumi.Input.encodeList<TrunkedNetworkAttachmentConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AttachedNetworkConfiguration.fromMap(Map<String, dynamic> map) {
    return AttachedNetworkConfiguration(
      l2Networks: map['l2Networks'] == null ? null : (pulumi.Input.decodeList<L2NetworkAttachmentConfiguration>(map['l2Networks']!, (value) => L2NetworkAttachmentConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      l3Networks: map['l3Networks'] == null ? null : (pulumi.Input.decodeList<L3NetworkAttachmentConfiguration>(map['l3Networks']!, (value) => L3NetworkAttachmentConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      trunkedNetworks: map['trunkedNetworks'] == null ? null : (pulumi.Input.decodeList<TrunkedNetworkAttachmentConfiguration>(map['trunkedNetworks']!, (value) => TrunkedNetworkAttachmentConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

