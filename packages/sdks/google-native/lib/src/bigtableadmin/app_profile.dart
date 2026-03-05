import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_profile_args.dart';
import 'multi_cluster_routing_use_any_response.dart';
import 'single_cluster_routing_response.dart';
import 'standard_isolation_response.dart';

/// Creates an app profile within an instance.
class AppProfile extends pulumi.CustomResource {
  /// Required. The ID to be used when referring to the new app profile within its instance, e.g., just `myprofile` rather than `projects/myproject/instances/myinstance/appProfiles/myprofile`.
  late final pulumi.Output<String> appProfileId;

  /// Long form description of the use case for this AppProfile.
  late final pulumi.Output<String> description;

  /// Strongly validated etag for optimistic concurrency control. Preserve the value returned from `GetAppProfile` when calling `UpdateAppProfile` to fail the request if there has been a modification in the mean time. The `update_mask` of the request need not include `etag` for this protection to apply. See [Wikipedia](https://en.wikipedia.org/wiki/HTTP_ETag) and [RFC 7232](https://tools.ietf.org/html/rfc7232#section-2.3) for more details.
  late final pulumi.Output<String> etag;

  /// If true, ignore safety checks when creating the app profile.
  late final pulumi.Output<bool?> ignoreWarnings;
  late final pulumi.Output<String> instanceId;

  /// Use a multi-cluster routing policy.
  late final pulumi.Output<MultiClusterRoutingUseAnyResponse>
  multiClusterRoutingUseAny;

  /// The unique name of the app profile. Values are of the form `projects/{project}/instances/{instance}/appProfiles/_a-zA-Z0-9*`.
  late final pulumi.Output<String> name;

  /// This field has been deprecated in favor of `standard_isolation.priority`. If you set this field, `standard_isolation.priority` will be set instead. The priority of requests sent using this app profile.
  late final pulumi.Output<String> priority;
  late final pulumi.Output<String> project;

  /// Use a single-cluster routing policy.
  late final pulumi.Output<SingleClusterRoutingResponse> singleClusterRouting;

  /// The standard options used for isolating this app profile's traffic from other use cases.
  late final pulumi.Output<StandardIsolationResponse> standardIsolation;

  /// Creates a new [AppProfile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AppProfile]. {@macro pulumi_bigtableadmin_v2_app_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AppProfile(
    String name, {
    AppProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:bigtableadmin/v2:AppProfile',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    appProfileId = registerOutput<String>('appProfileId');
    description = registerOutput<String>('description');
    etag = registerOutput<String>('etag');
    ignoreWarnings = registerOutput<bool?>('ignoreWarnings');
    instanceId = registerOutput<String>('instanceId');
    multiClusterRoutingUseAny =
        registerOutput<MultiClusterRoutingUseAnyResponse>(
          'multiClusterRoutingUseAny',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return MultiClusterRoutingUseAnyResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    this.name = registerOutput<String>('name');
    priority = registerOutput<String>('priority');
    project = registerOutput<String>('project');
    singleClusterRouting = registerOutput<SingleClusterRoutingResponse>(
      'singleClusterRouting',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SingleClusterRoutingResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    standardIsolation = registerOutput<StandardIsolationResponse>(
      'standardIsolation',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return StandardIsolationResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }
}
