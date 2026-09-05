// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NetappVolumeAttachment resources.
class NetappVolumeAttachmentState {
  /// The name which should be used for this Azure VMware Solution Private Cloud Netapp File Volume Attachment. Changing this forces a new Azure VMware Solution Private Cloud Netapp File Volume Attachment to be created.
  final pulumi.Input<String?>? name;
  /// The netapp file volume for this Azure VMware Solution Private Cloud Netapp File Volume Attachment to connect to. Changing this forces a new Azure VMware Solution Private Cloud Netapp File Volume Attachment to be created.
  final pulumi.Input<String?>? netappVolumeId;
  /// The vmware cluster for this Azure VMware Solution Private Cloud Netapp File Volume Attachment to associated to. Changing this forces a new Azure VMware Solution Private Cloud Netapp File Volume Attachment to be created.
  ///
  /// &gt; **Note:** please follow the prerequisites mentioned in this [article](https://learn.microsoft.com/en-us/azure/azure-vmware/attach-azure-netapp-files-to-azure-vmware-solution-hosts?tabs=azure-portal#prerequisites) before associating the netapp file volume to the Azure VMware Solution hosts.
  final pulumi.Input<String?>? vmwareClusterId;

  /// Creates a new [NetappVolumeAttachmentState].
  /// [name] The name which should be used for this Azure VMware Solution Private Cloud Netapp File Volume Attachment. Changing this forces a new Azure VMware Solution Private Cloud Netapp File Volume Attachment to be created.
  /// [netappVolumeId] The netapp file volume for this Azure VMware Solution Private Cloud Netapp File Volume Attachment to connect to. Changing this forces a new Azure VMware Solution Private Cloud Netapp File Volume Attachment to be created.
  /// [vmwareClusterId] The vmware cluster for this Azure VMware Solution Private Cloud Netapp File Volume Attachment to associated to. Changing this forces a new Azure VMware Solution Private Cloud Netapp File Volume Attachment to be created.
  const NetappVolumeAttachmentState({
    this.name,
    this.netappVolumeId,
    this.vmwareClusterId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'netappVolumeId': ?netappVolumeId,
      'vmwareClusterId': ?vmwareClusterId,
    };
  }

  factory NetappVolumeAttachmentState.fromMap(Map<String, dynamic> map) {
    return NetappVolumeAttachmentState(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      netappVolumeId: (() { final guardedValue = map['netappVolumeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vmwareClusterId: (() { final guardedValue = map['vmwareClusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
