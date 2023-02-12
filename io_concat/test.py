bus_inf = '''
    <spirit:busInterface>
      <spirit:name>pin_{0}</spirit:name>
      <spirit:busType spirit:vendor="xilinx.com" spirit:library="interface" spirit:name="gpio" spirit:version="1.0"/>
      <spirit:abstractionType spirit:vendor="xilinx.com" spirit:library="interface" spirit:name="gpio_rtl" spirit:version="1.0"/>
      <spirit:mirroredMaster/>
      <spirit:portMaps>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>TRI_O</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>lo_{0}</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>TRI_T</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>lt_{0}</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>TRI_I</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>li_{0}</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
      </spirit:portMaps>
      <spirit:vendorExtensions>
        <xilinx:busInterfaceInfo>
          <xilinx:enablement>
            <xilinx:isEnabled xilinx:resolve="dependent" xilinx:id="BUSIF_ENABLEMENT.pin_{0}" xilinx:dependency="$C_NUM_OF_PIN>{0}">false</xilinx:isEnabled>
          </xilinx:enablement>
        </xilinx:busInterfaceInfo>
      </spirit:vendorExtensions>
    </spirit:busInterface>
'''

# print(bus_inf.format(1))

with open("io_concat/gen.log", 'w') as f:
    for i in range(31):
        f.write(bus_inf.format(i+1))


