// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// MIME document parts for nodeadm configuration. This can be shell scripts, nodeadm configuration or any other user data compatible script.
///
/// See for more details: https://awslabs.github.io/amazon-eks-ami/nodeadm/.
class NodeadmOptions {
  /// The actual content of the MIME document part, such as shell script code or nodeadm configuration. Must be compatible with the specified contentType.
  final pulumi.Input<String> content;
  /// The MIME type of the content. Examples are `text/x-shellscript; charset="us-ascii"` for shell scripts, and `application/node.eks.aws` nodeadm configuration.
  final pulumi.Input<String> contentType;

  /// Creates a new [NodeadmOptions].
  /// [content] The actual content of the MIME document part, such as shell script code or nodeadm configuration. Must be compatible with the specified contentType.
  /// [contentType] The MIME type of the content. Examples are `text/x-shellscript; charset="us-ascii"` for shell scripts, and `application/node.eks.aws` nodeadm configuration.
  const NodeadmOptions({
    required this.content,
    required this.contentType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'contentType': contentType,
    };
  }

  factory NodeadmOptions.fromMap(Map<String, dynamic> map) {
    return NodeadmOptions(
      content: pulumi.Input.fromValue(map['content'] as String),
      contentType: pulumi.Input.fromValue(map['contentType'] as String),
    );
  }
}
