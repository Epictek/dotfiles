import vapoursynth as vs
core = vs.get_core()

try:
    core.std.LoadPlugin("/usr/local/lib/libf3kdb.so")
except:
    print("already loaded")

clip = video_in
clip = core.std.Trim(clip, first=0, length=500000)
clip = core.f3kdb.Deband(clip, output_depth=16, dynamic_grain=True, grainy=16, grainc=16)
clip.set_output()
