import 'package:pulumi/pulumi.dart' as pulumi;
import 'admin_user_response.dart';
import 'contact_center_args.dart';
import 'instance_config_response.dart';
import 'samlparams_response.dart';
import 'uris_response.dart';

/// Creates a new ContactCenter in a given project and location.
class ContactCenter extends pulumi.CustomResource {
  /// Optional. Info about the first admin user, such as given name and family name.
  late final pulumi.Output<AdminUserResponse> adminUser;

  /// Optional. Whether to enable users to be created in the CCAIP-instance concurrently to having users in Cloud identity
  late final pulumi.Output<bool> ccaipManagedUsers;

  /// Required. Id of the requesting object If auto-generating Id server-side, remove this field and contact_center_id from the method_signature of Create RPC
  late final pulumi.Output<String> contactCenterId;

  /// [Output only] Create time stamp
  late final pulumi.Output<String> createTime;

  /// Immutable. At least 2 and max 16 char long, must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt).
  late final pulumi.Output<String> customerDomainPrefix;

  /// A user friendly name for the ContactCenter.
  late final pulumi.Output<String> displayName;

  /// The configuration of this instance, it is currently immutable once created.
  late final pulumi.Output<InstanceConfigResponse> instanceConfig;

  /// Immutable. The KMS key name to encrypt the user input (`ContactCenter`).
  late final pulumi.Output<String> kmsKey;

  /// Labels as key value pairs
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// name of resource
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;

  /// Optional. Params that sets up Google as IdP.
  late final pulumi.Output<SAMLParamsResponse> samlParams;

  /// The state of this contact center.
  late final pulumi.Output<String> state;

  /// [Output only] Update time stamp
  late final pulumi.Output<String> updateTime;

  /// URIs to access the deployed ContactCenters.
  late final pulumi.Output<URIsResponse> uris;

  /// Optional. Email address of the first admin user.
  late final pulumi.Output<String> userEmail;

  /// Creates a new [ContactCenter].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ContactCenter]. {@macro pulumi_contactcenteraiplatform_v1alpha1_contact_center_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ContactCenter(
    String name, {
    ContactCenterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:contactcenteraiplatform/v1alpha1:ContactCenter',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    adminUser = registerOutput<AdminUserResponse>(
      'adminUser',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AdminUserResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    ccaipManagedUsers = registerOutput<bool>('ccaipManagedUsers');
    contactCenterId = registerOutput<String>('contactCenterId');
    createTime = registerOutput<String>('createTime');
    customerDomainPrefix = registerOutput<String>('customerDomainPrefix');
    displayName = registerOutput<String>('displayName');
    instanceConfig = registerOutput<InstanceConfigResponse>(
      'instanceConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return InstanceConfigResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    kmsKey = registerOutput<String>('kmsKey');
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    requestId = registerOutput<String?>('requestId');
    samlParams = registerOutput<SAMLParamsResponse>(
      'samlParams',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SAMLParamsResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
    uris = registerOutput<URIsResponse>(
      'uris',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return URIsResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    userEmail = registerOutput<String>('userEmail');
  }
}
