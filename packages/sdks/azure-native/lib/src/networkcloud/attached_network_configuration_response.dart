// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'l2_network_attachment_configuration_response.dart';
import 'l3_network_attachment_configuration_response.dart';
import 'trunked_network_attachment_configuration_response.dart';

class AttachedNetworkConfigurationResponse {
  /// The list of Layer 2 Networks and related configuration for attachment.
  final pulumi.Input<List<L2NetworkAttachmentConfigurationResponse>>? l2Networks;
  /// The list of Layer 3 Networks and related configuration for attachment.
  final pulumi.Input<List<L3NetworkAttachmentConfigurationResponse>>? l3Networks;
  /// The list of Trunked Networks and related configuration for attachment.
  final pulumi.Input<List<TrunkedNetworkAttachmentConfigurationResponse>>? trunkedNetworks;

  /// Creates a new [AttachedNetworkConfigurationResponse].
  /// [l2Networks] The list of Layer 2 Networks and related configuration for attachment.
  /// [l3Networks] The list of Layer 3 Networks and related configuration for attachment.
  /// [trunkedNetworks] The list of Trunked Networks and related configuration for attachment.
  AttachedNetworkConfigurationResponse({
    this.l2Networks,
    this.l3Networks,
    this.trunkedNetworks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'l2Networks': ?pulumi.Input.mapOptionalInputValue<List<L2NetworkAttachmentConfigurationResponse>, List<Map<String, dynamic>>>(l2Networks, (value) => pulumi.Input.encodeList<L2NetworkAttachmentConfigurationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'l3Networks': ?pulumi.Input.mapOptionalInputValue<List<L3NetworkAttachmentConfigurationResponse>, List<Map<String, dynamic>>>(l3Networks, (value) => pulumi.Input.encodeList<L3NetworkAttachmentConfigurationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'trunkedNetworks': ?pulumi.Input.mapOptionalInputValue<List<TrunkedNetworkAttachmentConfigurationResponse>, List<Map<String, dynamic>>>(trunkedNetworks, (value) => pulumi.Input.encodeList<TrunkedNetworkAttachmentConfigurationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AttachedNetworkConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return AttachedNetworkConfigurationResponse(
      l2Networks: map['l2Networks'] == null ? null : (pulumi.Input.decodeList<L2NetworkAttachmentConfigurationResponse>(map['l2Networks']!, (value) => L2NetworkAttachmentConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      l3Networks: map['l3Networks'] == null ? null : (pulumi.Input.decodeList<L3NetworkAttachmentConfigurationResponse>(map['l3Networks']!, (value) => L3NetworkAttachmentConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      trunkedNetworks: map['trunkedNetworks'] == null ? null : (pulumi.Input.decodeList<TrunkedNetworkAttachmentConfigurationResponse>(map['trunkedNetworks']!, (value) => TrunkedNetworkAttachmentConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

