import subprocess

p = subprocess.Popen("tmux ls", stdout=subprocess.PIPE, shell=True)
(output, err) = p.communicate()
p_status = p.wait()

sessions = output.strip().split('\n')
sessname = [i.split(':')[0] for i in sessions]

for i in range(len(sessions)):
    print('[%d] %s' % (i, sessions[i]))

id = int(input('Enter the id of the session that you want to re-attach to ...\n'))
assert 0 <= id < len(sessname), 'Invalid id, should be 0 ~ %d' % len(sessname)

p = subprocess.Popen("tmux a -t %s" % sessname[id], shell=True) 
_, _ = p.communicate()
_ = p.wait()

