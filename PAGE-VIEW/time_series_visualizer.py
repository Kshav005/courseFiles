import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

df = pd.read_csv('time_series_data.csv', parse_dates=['date'], index_col='date')
df = df[(df['value'] >= df['value'].quantile(0.025)) & (df['value'] <= df['value'].quantile(0.975))]

def draw_line_plot():
    df_line = df.copy()
    plt.figure(figsize=(10, 5))
    plt.plot(df_line.index, df_line['value'], color='blue', linewidth=1)
    plt.title('Daily freeCodeCamp Forum Page Views 5/2016-12/2019')
    plt.xlabel('Date')
    plt.ylabel('Page Views')
    plt.grid(True)
    plt.show()
    return plt.gcf()

def draw_bar_plot():
    df_bar = df.copy()
    df_bar['year'] = df_bar.index.year
    df_bar['month'] = df_bar.index.month_name()
    df_grouped = df_bar.groupby(['year', 'month'])['value'].mean().unstack()

    plt.figure(figsize=(10, 7))
    df_grouped.plot(kind='bar', stacked=False)
    plt.title('Average Monthly Values per Year')
    plt.xlabel('Years')
    plt.ylabel('Average Page Views')
    plt.legend(title='Month', bbox_to_anchor=(1.05, 1), loc='upper left')
    plt.tight_layout()
    plt.show()
    return plt.gcf()

def draw_box_plot():
    df_box = df.copy()
    df_box.reset_index(inplace=True)
    df_box['year'] = df_box['date'].dt.year
    df_box['month'] = df_box['date'].dt.strftime('%b')

    plt.figure(figsize=(12, 6))

    plt.subplot(1, 2, 1)
    sns.boxplot(x='year', y='value', data=df_box)
    plt.title('Year-wise Box Plot (Trend)')
    plt.xlabel('Year')
    plt.ylabel('Value')

    plt.subplot(1, 2, 2)
    sns.boxplot(x='month', y='value', data=df_box, order=['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'])
    plt.title('Month-wise Box Plot (Seasonality)')
    plt.xlabel('Month')
    plt.ylabel('Value')

    plt.tight_layout()
    plt.show()
    return plt.gcf()
