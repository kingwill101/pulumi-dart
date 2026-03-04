// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/eks.dart' as pulumi_aws_eks;

/// Associates an access policy and its scope to an IAM principal.
///
/// See for more details:
/// https://docs.aws.amazon.com/eks/latest/userguide/access-entries.html
class AccessPolicyAssociation {
  /// The scope of the access policy association. This controls whether the access policy is scoped to the cluster or to a particular namespace.
  final pulumi.Input<pulumi_aws_eks.AccessPolicyAssociationAccessScope>
  accessScope;

  /// The ARN of the access policy to associate with the principal
  final pulumi.Input<String> policyArn;

  /// Creates a new [AccessPolicyAssociation].
  /// [accessScope] The scope of the access policy association. This controls whether the access policy is scoped to the cluster or to a particular namespace.
  /// [policyArn] The ARN of the access policy to associate with the principal
  AccessPolicyAssociation({required this.accessScope, required this.policyArn});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessScope':
          pulumi.Input.mapInputValue<
            pulumi_aws_eks.AccessPolicyAssociationAccessScope,
            Map<String, dynamic>
          >(accessScope, (value) => value.toMap()),
      'policyArn': policyArn,
    };
  }

  factory AccessPolicyAssociation.fromMap(Map<String, dynamic> map) {
    return AccessPolicyAssociation(
      accessScope: pulumi.Input.fromValue(
        pulumi_aws_eks.AccessPolicyAssociationAccessScope.fromMap(
          (map['accessScope']! as Map).cast<String, dynamic>(),
        ),
      ),
      policyArn: pulumi.Input.fromValue(map['policyArn'] as String),
    );
  }
}
