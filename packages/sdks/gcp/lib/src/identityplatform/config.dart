import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_args.dart';
import 'config_blocking_functions.dart';
import 'config_client.dart';
import 'config_mfa.dart';
import 'config_monitoring.dart';
import 'config_multi_tenant.dart';
import 'config_quota.dart';
import 'config_sign_in.dart';
import 'config_sms_region_config.dart';
import 'config_state.dart';

/// Identity Platform configuration for a Cloud project. Identity Platform is an
/// end-to-end authentication system for third-party users to access apps
/// and services.
///
/// This entity is created only once during intialization and cannot be deleted,
/// individual Identity Providers may be disabled instead.  This resource may only
/// be created in billing-enabled projects.
///
///
/// To get more information about Config, see:
///
/// * [API documentation](https://cloud.google.com/identity-platform/docs/reference/rest/v2/Config)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/identity-platform/docs)
///
///
///
/// ## Example Usage
///
/// ### Identity Platform Config Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.organizations.Project("default", {
///     projectId: "my-project",
///     name: "my-project",
///     orgId: "123456789",
///     billingAccount: "000000-0000000-0000000-000000",
///     deletionPolicy: "DELETE",
///     labels: {
///         firebase: "enabled",
///     },
/// });
/// const identitytoolkit = new gcp.projects.Service("identitytoolkit", {
///     project: _default.projectId,
///     service: "identitytoolkit.googleapis.com",
/// });
/// const defaultConfig = new gcp.identityplatform.Config("default", {
///     project: _default.projectId,
///     autodeleteAnonymousUsers: true,
///     signIn: {
///         allowDuplicateEmails: true,
///         anonymous: {
///             enabled: true,
///         },
///         email: {
///             enabled: true,
///             passwordRequired: false,
///         },
///         phoneNumber: {
///             enabled: true,
///             testPhoneNumbers: {
///                 "+11231231234": "000000",
///             },
///         },
///     },
///     smsRegionConfig: {
///         allowlistOnly: {
///             allowedRegions: [
///                 "US",
///                 "CA",
///             ],
///         },
///     },
///     blockingFunctions: {
///         triggers: [{
///             eventType: "beforeSignIn",
///             functionUri: "https://us-east1-my-project.cloudfunctions.net/before-sign-in",
///         }],
///         forwardInboundCredentials: {
///             refreshToken: true,
///             accessToken: true,
///             idToken: true,
///         },
///     },
///     quota: {
///         signUpQuotaConfig: {
///             quota: 1000,
///             startTime: "2014-10-02T15:01:23Z",
///             quotaDuration: "7200s",
///         },
///     },
///     authorizedDomains: [
///         "localhost",
///         "my-project.firebaseapp.com",
///         "my-project.web.app",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.organizations.Project("default",
///     project_id="my-project",
///     name="my-project",
///     org_id="123456789",
///     billing_account="000000-0000000-0000000-000000",
///     deletion_policy="DELETE",
///     labels={
///         "firebase": "enabled",
///     })
/// identitytoolkit = gcp.projects.Service("identitytoolkit",
///     project=default.project_id,
///     service="identitytoolkit.googleapis.com")
/// default_config = gcp.identityplatform.Config("default",
///     project=default.project_id,
///     autodelete_anonymous_users=True,
///     sign_in={
///         "allow_duplicate_emails": True,
///         "anonymous": {
///             "enabled": True,
///         },
///         "email": {
///             "enabled": True,
///             "password_required": False,
///         },
///         "phone_number": {
///             "enabled": True,
///             "test_phone_numbers": {
///                 "+11231231234": "000000",
///             },
///         },
///     },
///     sms_region_config={
///         "allowlist_only": {
///             "allowed_regions": [
///                 "US",
///                 "CA",
///             ],
///         },
///     },
///     blocking_functions={
///         "triggers": [{
///             "event_type": "beforeSignIn",
///             "function_uri": "https://us-east1-my-project.cloudfunctions.net/before-sign-in",
///         }],
///         "forward_inbound_credentials": {
///             "refresh_token": True,
///             "access_token": True,
///             "id_token": True,
///         },
///     },
///     quota={
///         "sign_up_quota_config": {
///             "quota": 1000,
///             "start_time": "2014-10-02T15:01:23Z",
///             "quota_duration": "7200s",
///         },
///     },
///     authorized_domains=[
///         "localhost",
///         "my-project.firebaseapp.com",
///         "my-project.web.app",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Organizations.Project("default", new()
///     {
///         ProjectId = "my-project",
///         Name = "my-project",
///         OrgId = "123456789",
///         BillingAccount = "000000-0000000-0000000-000000",
///         DeletionPolicy = "DELETE",
///         Labels =
///         {
///             { "firebase", "enabled" },
///         },
///     });
///
///     var identitytoolkit = new Gcp.Projects.Service("identitytoolkit", new()
///     {
///         Project = @default.ProjectId,
///         ServiceName = "identitytoolkit.googleapis.com",
///     });
///
///     var defaultConfig = new Gcp.IdentityPlatform.Config("default", new()
///     {
///         Project = @default.ProjectId,
///         AutodeleteAnonymousUsers = true,
///         SignIn = new Gcp.IdentityPlatform.Inputs.ConfigSignInArgs
///         {
///             AllowDuplicateEmails = true,
///             Anonymous = new Gcp.IdentityPlatform.Inputs.ConfigSignInAnonymousArgs
///             {
///                 Enabled = true,
///             },
///             Email = new Gcp.IdentityPlatform.Inputs.ConfigSignInEmailArgs
///             {
///                 Enabled = true,
///                 PasswordRequired = false,
///             },
///             PhoneNumber = new Gcp.IdentityPlatform.Inputs.ConfigSignInPhoneNumberArgs
///             {
///                 Enabled = true,
///                 TestPhoneNumbers =
///                 {
///                     { "+11231231234", "000000" },
///                 },
///             },
///         },
///         SmsRegionConfig = new Gcp.IdentityPlatform.Inputs.ConfigSmsRegionConfigArgs
///         {
///             AllowlistOnly = new Gcp.IdentityPlatform.Inputs.ConfigSmsRegionConfigAllowlistOnlyArgs
///             {
///                 AllowedRegions = new[]
///                 {
///                     "US",
///                     "CA",
///                 },
///             },
///         },
///         BlockingFunctions = new Gcp.IdentityPlatform.Inputs.ConfigBlockingFunctionsArgs
///         {
///             Triggers = new[]
///             {
///                 new Gcp.IdentityPlatform.Inputs.ConfigBlockingFunctionsTriggerArgs
///                 {
///                     EventType = "beforeSignIn",
///                     FunctionUri = "https://us-east1-my-project.cloudfunctions.net/before-sign-in",
///                 },
///             },
///             ForwardInboundCredentials = new Gcp.IdentityPlatform.Inputs.ConfigBlockingFunctionsForwardInboundCredentialsArgs
///             {
///                 RefreshToken = true,
///                 AccessToken = true,
///                 IdToken = true,
///             },
///         },
///         Quota = new Gcp.IdentityPlatform.Inputs.ConfigQuotaArgs
///         {
///             SignUpQuotaConfig = new Gcp.IdentityPlatform.Inputs.ConfigQuotaSignUpQuotaConfigArgs
///             {
///                 Quota = 1000,
///                 StartTime = "2014-10-02T15:01:23Z",
///                 QuotaDuration = "7200s",
///             },
///         },
///         AuthorizedDomains = new[]
///         {
///             "localhost",
///             "my-project.firebaseapp.com",
///             "my-project.web.app",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/identityplatform"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := organizations.NewProject(ctx, "default", &organizations.ProjectArgs{
/// 			ProjectId:      pulumi.String("my-project"),
/// 			Name:           pulumi.String("my-project"),
/// 			OrgId:          pulumi.String("123456789"),
/// 			BillingAccount: pulumi.String("000000-0000000-0000000-000000"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 			Labels: pulumi.StringMap{
/// 				"firebase": pulumi.String("enabled"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = projects.NewService(ctx, "identitytoolkit", &projects.ServiceArgs{
/// 			Project: _default.ProjectId,
/// 			Service: pulumi.String("identitytoolkit.googleapis.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = identityplatform.NewConfig(ctx, "default", &identityplatform.ConfigArgs{
/// 			Project:                  _default.ProjectId,
/// 			AutodeleteAnonymousUsers: pulumi.Bool(true),
/// 			SignIn: &identityplatform.ConfigSignInArgs{
/// 				AllowDuplicateEmails: pulumi.Bool(true),
/// 				Anonymous: &identityplatform.ConfigSignInAnonymousArgs{
/// 					Enabled: pulumi.Bool(true),
/// 				},
/// 				Email: &identityplatform.ConfigSignInEmailArgs{
/// 					Enabled:          pulumi.Bool(true),
/// 					PasswordRequired: pulumi.Bool(false),
/// 				},
/// 				PhoneNumber: &identityplatform.ConfigSignInPhoneNumberArgs{
/// 					Enabled: pulumi.Bool(true),
/// 					TestPhoneNumbers: pulumi.StringMap{
/// 						"+11231231234": pulumi.String("000000"),
/// 					},
/// 				},
/// 			},
/// 			SmsRegionConfig: &identityplatform.ConfigSmsRegionConfigArgs{
/// 				AllowlistOnly: &identityplatform.ConfigSmsRegionConfigAllowlistOnlyArgs{
/// 					AllowedRegions: pulumi.StringArray{
/// 						pulumi.String("US"),
/// 						pulumi.String("CA"),
/// 					},
/// 				},
/// 			},
/// 			BlockingFunctions: &identityplatform.ConfigBlockingFunctionsArgs{
/// 				Triggers: identityplatform.ConfigBlockingFunctionsTriggerArray{
/// 					&identityplatform.ConfigBlockingFunctionsTriggerArgs{
/// 						EventType:   pulumi.String("beforeSignIn"),
/// 						FunctionUri: pulumi.String("https://us-east1-my-project.cloudfunctions.net/before-sign-in"),
/// 					},
/// 				},
/// 				ForwardInboundCredentials: &identityplatform.ConfigBlockingFunctionsForwardInboundCredentialsArgs{
/// 					RefreshToken: pulumi.Bool(true),
/// 					AccessToken:  pulumi.Bool(true),
/// 					IdToken:      pulumi.Bool(true),
/// 				},
/// 			},
/// 			Quota: &identityplatform.ConfigQuotaArgs{
/// 				SignUpQuotaConfig: &identityplatform.ConfigQuotaSignUpQuotaConfigArgs{
/// 					Quota:         pulumi.Int(1000),
/// 					StartTime:     pulumi.String("2014-10-02T15:01:23Z"),
/// 					QuotaDuration: pulumi.String("7200s"),
/// 				},
/// 			},
/// 			AuthorizedDomains: pulumi.StringArray{
/// 				pulumi.String("localhost"),
/// 				pulumi.String("my-project.firebaseapp.com"),
/// 				pulumi.String("my-project.web.app"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.Project;
/// import com.pulumi.gcp.organizations.ProjectArgs;
/// import com.pulumi.gcp.projects.Service;
/// import com.pulumi.gcp.projects.ServiceArgs;
/// import com.pulumi.gcp.identityplatform.Config;
/// import com.pulumi.gcp.identityplatform.ConfigArgs;
/// import com.pulumi.gcp.identityplatform.inputs.ConfigSignInArgs;
/// import com.pulumi.gcp.identityplatform.inputs.ConfigSignInAnonymousArgs;
/// import com.pulumi.gcp.identityplatform.inputs.ConfigSignInEmailArgs;
/// import com.pulumi.gcp.identityplatform.inputs.ConfigSignInPhoneNumberArgs;
/// import com.pulumi.gcp.identityplatform.inputs.ConfigSmsRegionConfigArgs;
/// import com.pulumi.gcp.identityplatform.inputs.ConfigSmsRegionConfigAllowlistOnlyArgs;
/// import com.pulumi.gcp.identityplatform.inputs.ConfigBlockingFunctionsArgs;
/// import com.pulumi.gcp.identityplatform.inputs.ConfigBlockingFunctionsForwardInboundCredentialsArgs;
/// import com.pulumi.gcp.identityplatform.inputs.ConfigQuotaArgs;
/// import com.pulumi.gcp.identityplatform.inputs.ConfigQuotaSignUpQuotaConfigArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var default_ = new Project("default", ProjectArgs.builder()
///             .projectId("my-project")
///             .name("my-project")
///             .orgId("123456789")
///             .billingAccount("000000-0000000-0000000-000000")
///             .deletionPolicy("DELETE")
///             .labels(Map.of("firebase", "enabled"))
///             .build());
///
///         var identitytoolkit = new Service("identitytoolkit", ServiceArgs.builder()
///             .project(default_.projectId())
///             .service("identitytoolkit.googleapis.com")
///             .build());
///
///         var defaultConfig = new Config("defaultConfig", ConfigArgs.builder()
///             .project(default_.projectId())
///             .autodeleteAnonymousUsers(true)
///             .signIn(ConfigSignInArgs.builder()
///                 .allowDuplicateEmails(true)
///                 .anonymous(ConfigSignInAnonymousArgs.builder()
///                     .enabled(true)
///                     .build())
///                 .email(ConfigSignInEmailArgs.builder()
///                     .enabled(true)
///                     .passwordRequired(false)
///                     .build())
///                 .phoneNumber(ConfigSignInPhoneNumberArgs.builder()
///                     .enabled(true)
///                     .testPhoneNumbers(Map.of("+11231231234", "000000"))
///                     .build())
///                 .build())
///             .smsRegionConfig(ConfigSmsRegionConfigArgs.builder()
///                 .allowlistOnly(ConfigSmsRegionConfigAllowlistOnlyArgs.builder()
///                     .allowedRegions(
///                         "US",
///                         "CA")
///                     .build())
///                 .build())
///             .blockingFunctions(ConfigBlockingFunctionsArgs.builder()
///                 .triggers(ConfigBlockingFunctionsTriggerArgs.builder()
///                     .eventType("beforeSignIn")
///                     .functionUri("https://us-east1-my-project.cloudfunctions.net/before-sign-in")
///                     .build())
///                 .forwardInboundCredentials(ConfigBlockingFunctionsForwardInboundCredentialsArgs.builder()
///                     .refreshToken(true)
///                     .accessToken(true)
///                     .idToken(true)
///                     .build())
///                 .build())
///             .quota(ConfigQuotaArgs.builder()
///                 .signUpQuotaConfig(ConfigQuotaSignUpQuotaConfigArgs.builder()
///                     .quota(1000)
///                     .startTime("2014-10-02T15:01:23Z")
///                     .quotaDuration("7200s")
///                     .build())
///                 .build())
///             .authorizedDomains(
///                 "localhost",
///                 "my-project.firebaseapp.com",
///                 "my-project.web.app")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:organizations:Project
///     properties:
///       projectId: my-project
///       name: my-project
///       orgId: '123456789'
///       billingAccount: 000000-0000000-0000000-000000
///       deletionPolicy: DELETE
///       labels:
///         firebase: enabled
///   identitytoolkit:
///     type: gcp:projects:Service
///     properties:
///       project: ${default.projectId}
///       service: identitytoolkit.googleapis.com
///   defaultConfig:
///     type: gcp:identityplatform:Config
///     name: default
///     properties:
///       project: ${default.projectId}
///       autodeleteAnonymousUsers: true
///       signIn:
///         allowDuplicateEmails: true
///         anonymous:
///           enabled: true
///         email:
///           enabled: true
///           passwordRequired: false
///         phoneNumber:
///           enabled: true
///           testPhoneNumbers:
///             '+11231231234': '000000'
///       smsRegionConfig:
///         allowlistOnly:
///           allowedRegions:
///             - US
///             - CA
///       blockingFunctions:
///         triggers:
///           - eventType: beforeSignIn
///             functionUri: https://us-east1-my-project.cloudfunctions.net/before-sign-in
///         forwardInboundCredentials:
///           refreshToken: true
///           accessToken: true
///           idToken: true
///       quota:
///         signUpQuotaConfig:
///           quota: 1000
///           startTime: 2014-10-02T15:01:23Z
///           quotaDuration: 7200s
///       authorizedDomains:
///         - localhost
///         - my-project.firebaseapp.com
///         - my-project.web.app
/// ```
///
///
/// ## Import
///
/// Config can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/config`
///
/// * `projects/{{project}}`
///
/// * `{{project}}`
///
/// When using the `pulumi import` command, Config can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:identityplatform/config:Config default projects/{{project}}/config
/// ```
///
/// ```sh
/// $ pulumi import gcp:identityplatform/config:Config default projects/{{project}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:identityplatform/config:Config default {{project}}
/// ```
class Config extends pulumi.CustomResource {
  /// List of domains authorized for OAuth redirects.
  late final pulumi.Output<List<String>> authorizedDomains;

  /// Whether anonymous users will be auto-deleted after a period of 30 days
  late final pulumi.Output<bool?> autodeleteAnonymousUsers;

  /// Configuration related to blocking functions.
  /// Structure is documented below.
  late final pulumi.Output<ConfigBlockingFunctions?> blockingFunctions;

  /// Options related to how clients making requests on behalf of a project should be configured.
  /// Structure is documented below.
  late final pulumi.Output<ConfigClient> client;

  /// Options related to how clients making requests on behalf of a project should be configured.
  /// Structure is documented below.
  late final pulumi.Output<ConfigMfa> mfa;

  /// Configuration related to monitoring project activity.
  /// Structure is documented below.
  late final pulumi.Output<ConfigMonitoring> monitoring;

  /// Configuration related to multi-tenant functionality.
  /// Structure is documented below.
  late final pulumi.Output<ConfigMultiTenant?> multiTenant;

  /// The name of the Config resource
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Configuration related to quotas.
  /// Structure is documented below.
  late final pulumi.Output<ConfigQuota?> quota;

  /// Configuration related to local sign in methods.
  /// Structure is documented below.
  late final pulumi.Output<ConfigSignIn> signIn;

  /// Configures the regions where users are allowed to send verification SMS for the project or tenant. This is based on the calling code of the destination phone number.
  /// Structure is documented below.
  late final pulumi.Output<ConfigSmsRegionConfig> smsRegionConfig;

  /// Creates a new [Config].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Config]. {@macro pulumi_identityplatform_config_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Config(String name, {ConfigArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'gcp:identityplatform/config:Config',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    authorizedDomains = registerOutput<List<String>>('authorizedDomains');
    autodeleteAnonymousUsers = registerOutput<bool?>(
      'autodeleteAnonymousUsers',
    );
    blockingFunctions = registerOutput<ConfigBlockingFunctions?>(
      'blockingFunctions',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ConfigBlockingFunctions.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    client = registerOutput<ConfigClient>(
      'client',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ConfigClient.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    mfa = registerOutput<ConfigMfa>(
      'mfa',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ConfigMfa.fromMap((guardedValue as Map).cast<String, dynamic>());
      },
    );
    monitoring = registerOutput<ConfigMonitoring>(
      'monitoring',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ConfigMonitoring.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    multiTenant = registerOutput<ConfigMultiTenant?>(
      'multiTenant',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ConfigMultiTenant.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    quota = registerOutput<ConfigQuota?>(
      'quota',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ConfigQuota.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    signIn = registerOutput<ConfigSignIn>(
      'signIn',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ConfigSignIn.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    smsRegionConfig = registerOutput<ConfigSmsRegionConfig>(
      'smsRegionConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ConfigSmsRegionConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }

  /// Gets an existing [Config] resource's state with the given [name] and [id].
  static Config get(
    String name,
    pulumi.Input<String> id, {
    ConfigState? state,
  }) {
    return Config._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Config._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:identityplatform/config:Config',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    authorizedDomains = registerOutput<List<String>>('authorizedDomains');
    autodeleteAnonymousUsers = registerOutput<bool?>(
      'autodeleteAnonymousUsers',
    );
    blockingFunctions = registerOutput<ConfigBlockingFunctions?>(
      'blockingFunctions',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ConfigBlockingFunctions.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    client = registerOutput<ConfigClient>(
      'client',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ConfigClient.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    mfa = registerOutput<ConfigMfa>(
      'mfa',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ConfigMfa.fromMap((guardedValue as Map).cast<String, dynamic>());
      },
    );
    monitoring = registerOutput<ConfigMonitoring>(
      'monitoring',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ConfigMonitoring.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    multiTenant = registerOutput<ConfigMultiTenant?>(
      'multiTenant',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ConfigMultiTenant.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    quota = registerOutput<ConfigQuota?>(
      'quota',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ConfigQuota.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    signIn = registerOutput<ConfigSignIn>(
      'signIn',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ConfigSignIn.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    smsRegionConfig = registerOutput<ConfigSmsRegionConfig>(
      'smsRegionConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ConfigSmsRegionConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }
}
