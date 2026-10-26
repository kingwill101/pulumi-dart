import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_data_response.dart';
import 'workforce_pool_key_args.dart';

/// Creates a new WorkforcePoolProviderKey in a WorkforcePoolProvider.
/// Auto-naming is currently not supported for this resource.
class WorkforcePoolKey extends pulumi.CustomResource {
  /// The time after which the key will be permanently deleted and cannot be recovered. Note that the key may get purged before this time if the total limit of keys per provider is exceeded.
  late final pulumi.Output<String> expireTime;
  /// Immutable. Public half of the asymmetric key.
  late final pulumi.Output<KeyDataResponse> keyData;
  late final pulumi.Output<String> location;
  /// The resource name of the key.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> providerId;
  /// The state of the key.
  late final pulumi.Output<String> state;
  /// The purpose of the key.
  late final pulumi.Output<String> use;
  late final pulumi.Output<String> workforcePoolId;
  /// Required. The ID to use for the key, which becomes the final component of the resource name. This value must be 4-32 characters, and may contain the characters [a-z0-9-].
  late final pulumi.Output<String> workforcePoolProviderKeyId;

  /// Creates a new [WorkforcePoolKey].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkforcePoolKey]. {@macro pulumi_iam_v1_workforce_pool_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkforcePoolKey(
    String name, {
    WorkforcePoolKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:iam/v1:WorkforcePoolKey',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '0.32.0', replaceOnChanges: ['location', 'providerId', 'workforcePoolId', 'workforcePoolProviderKeyId']).merge(options),
        ) {
    expireTime = registerOutput<String>('expireTime');
    keyData = registerOutput<KeyDataResponse>('keyData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KeyDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    providerId = registerOutput<String>('providerId');
    state = registerOutput<String>('state');
    use = registerOutput<String>('use');
    workforcePoolId = registerOutput<String>('workforcePoolId');
    workforcePoolProviderKeyId = registerOutput<String>('workforcePoolProviderKeyId');
  }

  /// Creates a typed reference to an existing [WorkforcePoolKey] resource.
  WorkforcePoolKey.reference(String urn)
    : super(
        'google-native:iam/v1:WorkforcePoolKey',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    expireTime = registerOutput<String>('expireTime');
    keyData = registerOutput<KeyDataResponse>('keyData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KeyDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    providerId = registerOutput<String>('providerId');
    state = registerOutput<String>('state');
    use = registerOutput<String>('use');
    workforcePoolId = registerOutput<String>('workforcePoolId');
    workforcePoolProviderKeyId = registerOutput<String>('workforcePoolProviderKeyId');
  }
}
