assign_ro = "assign ro_0 = lo_tmp[0];"


# for i in range(32):
#     print(f"assign ro_{i}= lo_tmp[{i}];")


# for i in range(32):
#     print(f"assign rt_{i}= lt_tmp[{i}];")

# for i in range(32):
#     print(f"ri_{31-i},")

bus_inf = '''
<spirit:busInterface>
      <spirit:name>pin_{0}</spirit:name>
      <spirit:busType spirit:vendor="xilinx.com" spirit:library="interface" spirit:name="gpio" spirit:version="1.0"/>
      <spirit:abstractionType spirit:vendor="xilinx.com" spirit:library="interface" spirit:name="gpio_rtl" spirit:version="1.0"/>
      <spirit:master/>
      <spirit:portMaps>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>TRI_O</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>ro_{0}</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>TRI_T</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>rt_{0}</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>TRI_I</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>ri_{0}</spirit:name>
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

with open("io_slice/gen.log", 'w') as f:
    for i in range(31):
        f.write(bus_inf.format(i+1))