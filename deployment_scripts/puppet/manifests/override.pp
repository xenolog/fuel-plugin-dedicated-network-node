# Manifest that creates hiera config overrride
notice('MODULAR: dedicated-network-node/override.pp')

# Initial constants
$plugin_name     = 'dedicated_network_node'
$plugin_settings = hiera_hash("${plugin_name}", {})
$network_scheme  = hiera_hash("network_scheme", {})
$network_scheme  = hiera_hash("network_metadata", {})

# Mangle network_scheme for setup new gateway
if $plugin_settings['metadata']['enabled'] {
  if $plugin_settings['neutron_agents']
    # override data for agents
  }

  if $plugin_settings['public_vip']
    # override data for agents
  }

  file {"/etc/hiera/plugins/${plugin_name}.yaml":
    ensure  => file,
    content => inline_template(
      "<%= @mangled_network_scheme %>"
    )
  }
}
# vim: set ts=2 sw=2 et :