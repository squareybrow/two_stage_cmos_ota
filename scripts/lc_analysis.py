import pathlib
import numpy as np
from matplotlib import pyplot as plt
import seaborn as sns
from spicelib import RawRead

FILE_PATH = pathlib.Path(__file__).parent.parent.joinpath('simulations/tb_opamp_ac_lc.raw')
LC_ANALYSIS = RawRead(FILE_PATH)

v_out = LC_ANALYSIS.get_trace('v(vout)').get_wave()
v_in = LC_ANALYSIS.get_trace('v(vin)').get_wave()
frequency = LC_ANALYSIS.get_trace('frequency').get_wave().real

gain_complex = v_out / v_in
magnitude_db = 20 * np.log10(np.abs(gain_complex))
phase_deg = np.degrees(np.unwrap(np.angle(gain_complex)))

fig, ax1 = plt.subplots(1, 1, figsize=(10, 6))
sns.set_theme(style="darkgrid")
sns.lineplot(y=magnitude_db, x=frequency, ax=ax1)
ax1.set_xscale('log')
ax1.set_xlabel('Frequency')
ax1.set_ylabel('Gain (dB)', fontweight='bold')
ax1.set_title('Frequency and Phase Response (LC Approach)', fontweight='bold')

ax1.xaxis.set_minor_locator(ticker.LogLocator(base=10.0, subs='all'))


ax2 = ax1.twinx()
sns.lineplot(x=frequency, y=phase_deg, ax=ax2)
ax2.set_ylabel('Phase (degrees)', fontweight='bold')

plt.tight_layout()
plt.show()

