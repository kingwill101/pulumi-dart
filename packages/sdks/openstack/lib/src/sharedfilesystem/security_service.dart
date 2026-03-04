import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_service_args.dart';
import 'security_service_state.dart';

/// Use this resource to configure a security service.
///
/// &gt; **Note:** All arguments including the security service password will be
/// stored in the raw state as plain-text. [Read more about sensitive data in
/// state](https://www.terraform.io/docs/state/sensitive-data.html).
///
/// A security service stores configuration information for clients for
/// authentication and authorization (AuthN/AuthZ). For example, a share server
/// will be the client for an existing service such as LDAP, Kerberos, or
/// Microsoft Active Directory.
///
/// Minimum supported Manila microversion is 2.7.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const securityservice1 = new openstack.sharedfilesystem.SecurityService("securityservice_1", {
///     name: "security",
///     description: "created by terraform",
///     type: "active_directory",
///     server: "192.168.199.10",
///     dnsIp: "192.168.199.10",
///     domain: "example.com",
///     ou: "CN=Computers,DC=example,DC=com",
///     user: "joinDomainUser",
///     password: "s8cret",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// securityservice1 = openstack.sharedfilesystem.SecurityService("securityservice_1",
///     name="security",
///     description="created by terraform",
///     type="active_directory",
///     server="192.168.199.10",
///     dns_ip="192.168.199.10",
///     domain="example.com",
///     ou="CN=Computers,DC=example,DC=com",
///     user="joinDomainUser",
///     password="s8cret")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var securityservice1 = new OpenStack.SharedFileSystem.SecurityService("securityservice_1", new()
///     {
///         Name = "security",
///         Description = "created by terraform",
///         Type = "active_directory",
///         Server = "192.168.199.10",
///         DnsIp = "192.168.199.10",
///         Domain = "example.com",
///         Ou = "CN=Computers,DC=example,DC=com",
///         User = "joinDomainUser",
///         Password = "s8cret",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/sharedfilesystem"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sharedfilesystem.NewSecurityService(ctx, "securityservice_1", &sharedfilesystem.SecurityServiceArgs{
/// 			Name:        pulumi.String("security"),
/// 			Description: pulumi.String("created by terraform"),
/// 			Type:        pulumi.String("active_directory"),
/// 			Server:      pulumi.String("192.168.199.10"),
/// 			DnsIp:       pulumi.String("192.168.199.10"),
/// 			Domain:      pulumi.String("example.com"),
/// 			Ou:          pulumi.String("CN=Computers,DC=example,DC=com"),
/// 			User:        pulumi.String("joinDomainUser"),
/// 			Password:    pulumi.String("s8cret"),
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
/// import com.pulumi.openstack.sharedfilesystem.SecurityService;
/// import com.pulumi.openstack.sharedfilesystem.SecurityServiceArgs;
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
///         var securityservice1 = new SecurityService("securityservice1", SecurityServiceArgs.builder()
///             .name("security")
///             .description("created by terraform")
///             .type("active_directory")
///             .server("192.168.199.10")
///             .dnsIp("192.168.199.10")
///             .domain("example.com")
///             .ou("CN=Computers,DC=example,DC=com")
///             .user("joinDomainUser")
///             .password("s8cret")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   securityservice1:
///     type: openstack:sharedfilesystem:SecurityService
///     name: securityservice_1
///     properties:
///       name: security
///       description: created by terraform
///       type: active_directory
///       server: 192.168.199.10
///       dnsIp: 192.168.199.10
///       domain: example.com
///       ou: CN=Computers,DC=example,DC=com
///       user: joinDomainUser
///       password: s8cret
/// ```
///
///
/// ## Import
///
/// This resource can be imported by specifying the ID of the security service:
///
/// ```sh
/// $ pulumi import openstack:sharedfilesystem/securityService:SecurityService securityservice_1 id
/// ```
class SecurityService extends pulumi.CustomResource {
  /// The human-readable description for the security service.
  /// Changing this updates the description of the existing security service.
  late final pulumi.Output<String?> description;

  /// The security service DNS IP address that is used inside the
  /// tenant network.
  late final pulumi.Output<String?> dnsIp;

  /// The security service domain.
  late final pulumi.Output<String?> domain;

  /// The name of the security service. Changing this updates the name
  /// of the existing security service.
  late final pulumi.Output<String> name;

  /// The security service ou. An organizational unit can be added to
  /// specify where the share ends up. New in Manila microversion 2.44.
  late final pulumi.Output<String?> ou;

  /// The user password, if you specify a user.
  late final pulumi.Output<String?> password;

  /// The owner of the Security Service.
  late final pulumi.Output<String> projectId;

  /// The region in which to obtain the V2 Shared File System client.
  /// A Shared File System client is needed to create a security service. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// security service.
  late final pulumi.Output<String> region;

  /// The security service host name or IP address.
  late final pulumi.Output<String?> server;

  /// The security service type - can either be active\_directory,
  /// kerberos or ldap.  Changing this updates the existing security service.
  late final pulumi.Output<String> type;

  /// The security service user or group name that is used by the
  /// tenant.
  late final pulumi.Output<String?> user;

  /// Creates a new [SecurityService].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecurityService]. {@macro pulumi_sharedfilesystem_security_service_security_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecurityService(
    String name, {
    SecurityServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'openstack:sharedfilesystem/securityService:SecurityService',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String?>('description');
    dnsIp = registerOutput<String?>('dnsIp');
    domain = registerOutput<String?>('domain');
    this.name = registerOutput<String>('name');
    ou = registerOutput<String?>('ou');
    password = registerOutput<String?>('password');
    projectId = registerOutput<String>('projectId');
    region = registerOutput<String>('region');
    server = registerOutput<String?>('server');
    type = registerOutput<String>('type');
    user = registerOutput<String?>('user');
  }

  /// Gets an existing [SecurityService] resource's state with the given [name] and [id].
  static SecurityService get(
    String name,
    pulumi.Input<String> id, {
    SecurityServiceState? state,
  }) {
    return SecurityService._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SecurityService._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'openstack:sharedfilesystem/securityService:SecurityService',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String?>('description');
    dnsIp = registerOutput<String?>('dnsIp');
    domain = registerOutput<String?>('domain');
    this.name = registerOutput<String>('name');
    ou = registerOutput<String?>('ou');
    password = registerOutput<String?>('password');
    projectId = registerOutput<String>('projectId');
    region = registerOutput<String>('region');
    server = registerOutput<String?>('server');
    type = registerOutput<String>('type');
    user = registerOutput<String?>('user');
  }
}
