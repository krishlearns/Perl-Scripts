 #! /usr/bin/perl

use POSIX qw(strftime); # Toi extract time
use HTTP::Date qw(str2time); 

  system("clear");
        print "### Don't execute this command unless until you know what you are doing #####\n";
        print "### Please take the help of author to execute this script#######\n";
        print "#### Thanks#######\n";

#my @nt = `netstat -s`;
 system "netstat -s > netstat.out";
 open(F,">$file") or die "not able to print";
 if(!-z $file)
 { 
        #print D "Date,tcp_predicted_ack|tcp_ack_no_data_received|tcp_socks_time_wait_recycled_time_stamp|tcp_retransmists_sack_failed|tcp_reordering_fack|tcp_conn_aborted_timeout|tcp_retransmits_slow_start|ip_incoming_packets_discarded|tcp_timeouts_loss_state|tcp_dsacks_received|tcp_packet_loss_recovered_sack|tcp_prequeue_packets_received|tcp_retransmits_forward|ip_fragments_received_ok|tcp_conn_reset_syn_recv_sockets|tcp_conn_established|tcp_receiver_scheduled_too_late_for_direct_processing|tcp_congestion_fully_recovered|ip_total_packets_received|tcp_queue_backlog_packets_received|tcp_ack_delay_locked_socket|tcp_segment_received|tcp_conn_reset_sent|tcp_timeouts_after_reno_fast_retransmit|ip_incoming_packets_delivered|tcp_dsacks_sent_for_old_packets|ip_outgoing_packets_dropped|tcp_queue_receive_packets_pruned_buffer_overrun|tcp_conn_active_open|tcp_segment_retransmit|tcp_predicted_packets_header_queued|tcp_queue_recieve_packets_collapsed_low_socket_buffer|tcp_conn_passive_open|tcp_cong_window_partially_recovered_hoe_heuristic|tcp_ack_quick|ip_forwarded|tcp_prequeue_recvmg_packets_queued|tcp_predicted_packets_header|tcp_ack_sent_delay|tcp_reno_recovery_fail|tcp_prequeue_packets_dropped|tcp_timeouts_after_sack_recovery|ip_requests_sent_out|ip_fragments_created|tcp_socks_time_wait_fast_timer|tcp_data_loss_events_2|tcp_segment_sent|tcp_queue_receive_packets_pruned|tcp_conn_failed|tcp_timeouts_other|tcp_cong_window_recovered_after_partial_ack|tcp_reordering_sack|tcp_packet_loss_recovered_fast_retransmit|tcp_conn_reset_unexpected_data|tcp_reordering_time_stamp|tcp_conn_reset_received|tcp_conn_reset_early_user_close|tcp_retransmits_fast|tcp_dsacks_sent_for_out_of_order_packets|tcp_reordering_reno_fast_retransmit|tcp_predicted_ack|tcp_ack_no_data_received|tcp_socks_time_wait_recycled_time_stamp|tcp_retransmists_sack_failed|tcp_reordering_fack|tcp_conn_aborted_timeout|tcp_retransmits_slow_start|ip_incoming_packets_discarded|tcp_timeouts_loss_state|tcp_dsacks_received|tcp_packet_loss_recovered_sack|tcp_prequeue_packets_received|tcp_retransmits_forward|ip_fragments_received_ok|tcp_conn_reset_syn_recv_sockets|tcp_conn_established|tcp_receiver_scheduled_too_late_for_direct_processing|tcp_congestion_fully_recovered|ip_total_packets_received|tcp_queue_backlog_packets_received|tcp_ack_delay_locked_socket|tcp_segment_received|tcp_conn_reset_sent|tcp_timeouts_after_reno_fast_retransmit|ip_incoming_packets_delivered|tcp_dsacks_sent_for_old_packets|ip_outgoing_packets_dropped|tcp_queue_receive_packets_pruned_buffer_overrun|tcp_conn_active_open|tcp_segment_retransmit|tcp_predicted_packets_header_queued|tcp_queue_recieve_packets_collapsed_low_socket_buffer|tcp_conn_passive_open|tcp_cong_window_partially_recovered_hoe_heuristic|tcp_ack_quick|ip_forwarded|tcp_prequeue_recvmg_packets_queued|tcp_predicted_packets_header|tcp_ack_sent_delay|tcp_reno_recovery_fail|tcp_prequeue_packets_dropped|tcp_timeouts_after_sack_recovery|ip_requests_sent_out|ip_fragments_created|tcp_socks_time_wait_fast_timer|tcp_data_loss_events_2|tcp_segment_sent|tcp_queue_receive_packets_pruned|tcp_conn_failed|tcp_timeouts_other|tcp_cong_window_recovered_after_partial_ack|tcp_reordering_sack|tcp_packet_loss_recovered_fast_retransmit|tcp_conn_reset_unexpected_data|tcp_reordering_time_stamp|tcp_conn_reset_received|tcp_conn_reset_early_user_close|tcp_retransmits_fast|tcp_dsacks_sent_for_out_of_order_packets|tcp_reordering_reno_fast_retransmit";
  print D "\n";
 }
 #my $date = strftime "%e/%b/%Y:%H:%M:%S -0700",localtime;
 my $date = str2time(localtime,'-0700');
 chomp($date);

 print D "\"".$date."\"\|";
 

%abb = (
  'active connections openings' => 'tcp_conn_active_open',
  'passive connection openings' => 'tcp_conn_passive_open',
  'failed connection attempts' => 'tcp_conn_failed',
  'connection resets received' => 'tcp_conn_reset_received',
  'connections established' => 'tcp_conn_established',
  'segments received' => 'tcp_segment_received',
  'segments send out' => 'tcp_segment_sent',
  'segments retransmited' => 'tcp_segment_retransmit',
  'bad segments received.' => 'tcp_segment_received',
  'resets sent' => 'tcp_conn_reset_sent',
  'resets received for embryonic SYN_RECV sockets' => 'tcp_conn_reset_syn_recv_sockets',
  'packets pruned from receive queue because of socket buffer overrun' => 'tcp_queue_receive_packets_pruned_buffer_overrun',
  'packets pruned from receive queue' => 'tcp_queue_receive_packets_pruned',
  'TCP sockets finished time wait in fast timer' => 'tcp_socks_time_wait_fast_timer',
  'time wait sockets recycled by time stamp' => 'tcp_socks_time_wait_recycled_time_stamp',
  'delayed acks sent' => 'tcp_ack_sent_delay',
  'delayed acks further delayed because of locked socket' => 'tcp_ack_delay_locked_socket',
  'Quick ack mode was activated n times' => 'tcp_ack_quick',
  'packets directly queued to recvmsg prequeue.' => 'tcp_prequeue_recvmg_packets_queued',
  'packets directly received from backlog' => 'tcp_queue_backlog_packets_received',
  'packets directly received from prequeue' => 'tcp_prequeue_packets_received',
  'packets dropped from prequeue' => 'tcp_prequeue_packets_dropped',
  'packets header predicted' => 'tcp_predicted_packets_header',
  'packets header predicted and directly queued to user' => 'tcp_predicted_packets_header_queued',
  'acknowledgments not containing data received' => 'tcp_ack_no_data_received',
  'predicted acknowledgments' => 'tcp_predicted_ack',
  'times recovered from packet loss due to fast retransmit' => 'tcp_packet_loss_recovered_fast_retransmit',
  'times recovered from packet loss due to SACK data' => 'tcp_packet_loss_recovered_sack',
  'Detected reordering n times using reno fast retransmit' => 'tcp_reordering_reno_retransmit',
  'Detected reordering n times using FACK' => 'tcp_reordering_fack',
  'Detected reordering n times using SACK' => 'tcp_reordering_sack',
  'Detected reordering n times using time stamp' => 'tcp_reordering_time_stamp',
  'Detected reordering n times using reno fast retransmit' => 'tcp_reordering_reno_fast_retransmit',
  'congestion windows fully recovered' => 'tcp_congestion_fully_recovered',
  'congestion windows partially recovered using Hoe heuristic' => 'tcp_cong_window_partially_recovered_hoe_heuristic',
  'congestion windows recovered after partial ack' => 'tcp_cong_window_recovered_after_partial_ack',
  'data loss events' => 'tcp_data_loss_events_1',
  'timeouts after reno fast retransmit' => 'tcp_timeouts_after_reno_fast_retransmit',
  'timeouts after SACK recovery' => 'tcp_timeouts_after_sack_recovery',
  'timeouts in loss state' => 'tcp_timeouts_loss_state',
  'fast retransmits' => 'tcp_retransmits_fast',
  'forward retransmits' => 'tcp_retransmits_forward',
  'retransmits in slow start' => 'tcp_retransmits_slow_start',
  'other TCP timeouts' => 'tcp_timeouts_other',
  'TCPRenoRecoveryFail' => 'tcp_reno_recovery_fail',
  'TCP data loss events' => 'tcp_data_loss_events_2',
  'sack retransmits failed' => 'tcp_retransmists_sack_failed',
  'times receiver scheduled too late for direct processing' => 'tcp_receiver_scheduled_too_late_for_direct_processing',
  'packets collapsed in receive queue due to low socket buffer' => 'tcp_queue_recieve_packets_collapsed_low_socket_buffer',
  'DSACKs sent for old packets' => 'tcp_dsacks_sent_for_old_packets', 
  'DSACKs sent for out of order packets' => 'tcp_dsacks_sent_for_out_of_order_packets',
  'DSACKs received' => 'tcp_dsacks_received',
  'connections reset due to unexpected data' => 'tcp_conn_reset_unexpected_data',
  'connections reset due to early user close' => 'tcp_conn_reset_early_user_close',
  'connections aborted due to timeout' => 'tcp_conn_aborted_timeout',
  'total packets received' => 'ip_total_packets_received',
  'forwarded' => 'ip_forwarded',
  'incoming packets discarded' => 'ip_incoming_packets_discarded',
  'incoming packets delivered' => 'ip_incoming_packets_delivered',
  'requests sent out' => 'ip_requests_sent_out',
  'outgoing packets dropped' => 'ip_outgoing_packets_dropped',
  'fragments received ok' => 'ip_fragments_received_ok',
  'fragments created' => 'ip_fragments_created',
  'InMcastPkts' => 'ip_InMcastPkts'
 );


my %netstatValues;
 

while()
{
 $line=$_;
 if($line =~ /Tcp:/ || $line =~ /TcpExt:/ || $line =~ /Ip:/ || $line =~ /IpExt:/)
 {
    my $section=$line;
    chomp($section);
  #  print STDOUT $line;
    while()
    {
     $line=$_;
     chomp($line);
 #    print $line;
       if($line =~ m/InMcastPkts:/)
       {
   $line =~ m/\s+([a-zA-Z]+):\s+(\d+)/;
   $value = $2;
   $msg = $1;
       }  
#test

  
            if($line =~ /Udp:/ || $line =~ /IpExt:/ || $line =~ /Icmp:/)
            {
  
  last;
            }

     @tokens=split(/\s+/,$line);
     $value = $tokens[1];
     $j = $#tokens;
     $i = 2;
     $msg = join(' ',@tokens[$i..$j]);
 
           if(!defined($abb{$msg}))
    {
              if($line =~ m/Detected/ || $line =~ m/Quick/)
       {
  #Detected reordering 1 times using SACK
  #Quick.* n times
  $line=~ /\s+([a-zA-Z\s]+)(\d+)(.*)/;
  $value = $2;
  $msg = "$1n$3";
  $msg =~ s/\s+/ /;
       }
 
       if($line =~ m/TCPRenoRecoveryFail:/)
       {
   $line =~ m/\s+([a-zA-Z]+):\s+(\d+)/;
   $value = $2;
   $msg = $1;
       }  
        
           }

     print STDERR "\n Missing abbrevation for $line" unless defined($abb{$msg}) ;   
     $netstatValues{$abb{$msg}}=$value;
    } # inner file 

   #print STDOUT "$_ $netstatValues{$_}\n" for (keys %netstatValues);       
 } 

 #print STDOUT  "$netstatValues{$_}\n" for (keys %netstatValues);
 #print STDOUT  "$_" for (keys %netstatValues);
  #print D "\"$netstatValues{$_}\"|" for (keys %netstatValues);
=pod
  my $count=1;
  for $outkey (keys %abb)
  {
  for $inkey (keys %netstatValues)
  {
   if($abb{$outkey} eq $netstatValues{$inkey})
   {
   print D "\"$netstatValues{$_}\"|";
   $count=2;
   }
  
  }
  if($count == 2)
  {
   print D "\"NA\"";
  }
  }
=cut

}

  my @kout = keys %abb;
  for $outkey (sort  @kout)
  {
  my @kin = keys %netstatValues;
  my $count=1;
  for $inkey (sort @kin)
  {
   if($abb{$outkey} eq $inkey)
   {
   print D "\"$netstatValues{$inkey}\"|";
   $count=2;
   last;
   }
  
  }
  if($count == 1)
  {
  print D "\"NA\"|";
  }
  }
