import 'package:pulumi/pulumi.dart' as pulumi;
import 'inbound_sso_assignment_args.dart';
import 'saml_sso_info_response.dart';
import 'sign_in_behavior_response.dart';

/// Creates an InboundSsoAssignment for users and devices in a `Customer` under a given `Group` or `OrgUnit`.
/// Auto-naming is currently not supported for this resource.
class InboundSsoAssignment extends pulumi.CustomResource {
  /// Immutable. The customer. For example: `customers/C0123abc`.
  late final pulumi.Output<String> customer;

  /// [Resource name](https://cloud.google.com/apis/design/resource_names) of the Inbound SSO Assignment.
  late final pulumi.Output<String> name;

  /// Must be zero (which is the default value so it can be omitted) for assignments with `target_org_unit` set and must be greater-than-or-equal-to one for assignments with `target_group` set.
  late final pulumi.Output<int> rank;

  /// SAML SSO details. Must be set if and only if `sso_mode` is set to `SAML_SSO`.
  late final pulumi.Output<SamlSsoInfoResponse> samlSsoInfo;

  /// Assertions about users assigned to an IdP will always be accepted from that IdP. This controls whether/when Google should redirect a user to the IdP. Unset (defaults) is the recommended configuration.
  late final pulumi.Output<SignInBehaviorResponse> signInBehavior;

  /// Inbound SSO behavior.
  late final pulumi.Output<String> ssoMode;

  /// Immutable. Must be of the form `groups/{group}`.
  late final pulumi.Output<String> targetGroup;

  /// Immutable. Must be of the form `orgUnits/{org_unit}`.
  late final pulumi.Output<String> targetOrgUnit;

  /// Creates a new [InboundSsoAssignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InboundSsoAssignment]. {@macro pulumi_cloudidentity_v1_inbound_sso_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InboundSsoAssignment(
    String name, {
    InboundSsoAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:cloudidentity/v1:InboundSsoAssignment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    customer = registerOutput<String>('customer');
    this.name = registerOutput<String>('name');
    rank = registerOutput<int>('rank');
    samlSsoInfo = registerOutput<SamlSsoInfoResponse>(
      'samlSsoInfo',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SamlSsoInfoResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    signInBehavior = registerOutput<SignInBehaviorResponse>(
      'signInBehavior',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SignInBehaviorResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    ssoMode = registerOutput<String>('ssoMode');
    targetGroup = registerOutput<String>('targetGroup');
    targetOrgUnit = registerOutput<String>('targetOrgUnit');
  }
}
