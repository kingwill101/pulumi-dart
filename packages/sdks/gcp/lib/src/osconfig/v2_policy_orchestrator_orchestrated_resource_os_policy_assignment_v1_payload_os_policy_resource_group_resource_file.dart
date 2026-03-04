// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_policy_orchestrator_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_file_file.dart';

class V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceFile {
  /// A a file with this content.
  /// The size of the content is limited to 32KiB.
  final pulumi.Input<String>? content;

  /// A remote or local file.
  /// Structure is documented below.
  final pulumi.Input<
    V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceFileFile
  >?
  file;

  /// Required. The absolute path of the file within the VM.
  final pulumi.Input<String> path;

  /// Consists of three octal digits which represent, in
  /// order, the permissions of the owner, group, and other users for the
  /// file (similarly to the numeric mode used in the linux chmod
  /// utility). Each digit represents a three bit number with the 4 bit
  /// corresponding to the read permissions, the 2 bit corresponds to the
  /// write bit, and the one bit corresponds to the execute permission.
  /// Default behavior is 755.
  /// Below are some examples of permissions and their associated values:
  /// read, write, and execute: 7
  /// read and execute: 5
  /// read and write: 6
  /// read only: 4
  final pulumi.Input<String>? permissions;

  /// Required. Desired state of the file.
  /// Possible values:
  /// DESIRED_STATE_UNSPECIFIED
  /// PRESENT
  /// ABSENT
  /// CONTENTS_MATCH
  final pulumi.Input<String> state;

  /// Creates a new [V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceFile].
  /// [content] A a file with this content.
  /// [file] A remote or local file.
  /// [path] Required. The absolute path of the file within the VM.
  /// [permissions] Consists of three octal digits which represent, in
  /// [state] Required. Desired state of the file.
  V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceFile({
    this.content,
    this.file,
    required this.path,
    this.permissions,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
      'file':
          ?pulumi.Input.mapOptionalInputValue<
            V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceFileFile,
            Map<String, dynamic>
          >(file, (value) => value.toMap()),
      'path': path,
      'permissions': ?permissions,
      'state': state,
    };
  }

  factory V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceFile.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceFile(
      content: (() {
        final guardedValue = map['content'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      file: (() {
        final guardedValue = map['file'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceFileFile.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      path: pulumi.Input.fromValue(map['path'] as String),
      permissions: (() {
        final guardedValue = map['permissions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
