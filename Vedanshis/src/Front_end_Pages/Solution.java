package Front_end_Pages;

import java.util.*;

public class Solution {
    static int N = 300000;
    static int MOD = 1000000007;
    static int[] h = new int[N + 1];
    static int[] e = new int[N * 2 + 1];
    static int[] ne = new int[N * 2 + 1];
    static int idx;
    static int[] dist = new int[N + 1];
    static int[] q = new int[N + 1];
    static int tt;
    static boolean[] st = new boolean[N + 1];

    static void add(int a, int b) {
        e[idx] = b;
        ne[idx] = h[a];
        h[a] = idx ++;
    }

    static void bfs(int u) {
        int hh = 0, tt = 0;
        q[tt ++] = u;
        dist[u] = 0;
        while(hh < tt) {
            int t = q[hh ++];
            st[t] = true;
            for(int i = h[t]; ~i; i = ne[i]) {
                int j = e[i];
                if(st[j]) continue;
                dist[j] = dist[t] + 1;
                st[j] = true;
                q[tt ++] = j;
            }
        }
    }

    public static int beauty(int n, int m, String s, int[] x, int[] y) {
        Arrays.fill(h, -1);
        int res = 0;
        for(int i = 0; i < m; i ++) {
            int a = x[i] + 1, b = y[i] + 1;
            add(b, a);
        }
        for(int i = 0; i < n; i ++) {
            if(st[i]) continue;
            bfs(i);
            int minn = Integer.MAX_VALUE;
            int maxx = Integer.MIN_VALUE;
            for(int j = 0; j < n; j ++) {
                if(st[j]) continue;
                minn = Math.min(minn, dist[j]);
                maxx = Math.max(maxx, dist[j]);
            }
            res = Math.max(res, maxx - minn + 1);
        }
        for(int i = 0; i < n; i ++) {
            if(s.charAt(i) == '?') continue;
            int u = s.charAt(i) - 'a';
            if(res <= u) {
                res = -1;
                break;
            }
            res -= (u + 1);
        }
        return res;
    }
}
