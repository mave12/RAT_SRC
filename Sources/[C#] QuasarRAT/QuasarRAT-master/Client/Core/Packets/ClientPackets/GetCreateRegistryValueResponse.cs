using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using xClient.Core.Networking;
using xClient.Core.Registry;

namespace xClient.Core.Packets.ClientPackets
{
    [Serializable]
    public class GetCreateRegistryValueResponse : IPacket
    {
        public string KeyPath { get; set; }
        public RegValueData Value { get; set; }

        public bool IsError { get; set; }
        public string ErrorMsg { get; set; }

        public GetCreateRegistryValueResponse() { }

        public void Execute(Client client)
        {
            client.Send(this);
        }
    }
}
